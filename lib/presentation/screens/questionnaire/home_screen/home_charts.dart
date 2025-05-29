import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';

class WellbeingLineChart extends StatelessWidget {
  final String title;
  final int Function(WellbeingScoreData) scoreExtractor;
  final Color lineColor;

  const WellbeingLineChart({
    super.key,
    required this.title,
    required this.scoreExtractor,
    this.lineColor = Colors.deepPurple,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        final List<WellbeingScoreData> data = state.history;

        final List<WellbeingScoreDisplayData> displayData = data
            .map((e) => WellbeingScoreDisplayData(
                  formattedDate: DateFormat('dd/MM HH:mm').format(e.date),
                  score: scoreExtractor(e),
                ))
            .toList();

        return Column(
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 20),
            Expanded(
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  title:
                      AxisTitle(text: AppLocalizations.of(context)!.dateTime),
                  labelRotation: -45,
                  labelStyle: const TextStyle(color: Colors.black),
                  axisLine: const AxisLine(color: Colors.black),
                  majorTickLines: const MajorTickLines(color: Colors.black),
                  minorTickLines: const MinorTickLines(color: Colors.black),
                ),
                primaryYAxis: NumericAxis(
                  minimum: 0,
                  maximum: 100,
                  interval: 20,
                  title: AxisTitle(text: AppLocalizations.of(context)!.score),
                  labelStyle: const TextStyle(color: Colors.black),
                  axisLine: const AxisLine(color: Colors.black),
                  majorTickLines: const MajorTickLines(color: Colors.black),
                  minorTickLines: const MinorTickLines(color: Colors.black),
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries>[
                  LineSeries<WellbeingScoreDisplayData, String>(
                    dataSource: displayData,
                    xValueMapper: (score, _) => score.formattedDate,
                    yValueMapper: (score, _) => score.score,
                    markerSettings: const MarkerSettings(isVisible: true),
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      textStyle: TextStyle(color: Colors.black),
                    ),
                    color: lineColor,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class DimensionChartSwitcher extends StatelessWidget {
  const DimensionChartSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> localizedLabels = {
      'autonomy': AppLocalizations.of(context)!.autonomy,
      'competence': AppLocalizations.of(context)!.competence,
      'relatedness': AppLocalizations.of(context)!.relatedness,
    };

    final Map<String, int Function(WellbeingScoreData)> chartOptions = {
      'autonomy': (e) => e.autonomyScore,
      'competence': (e) => e.competenceScore,
      'relatedness': (e) => e.relatednessScore,
    };

    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        final selectedDimension = state.selectedDimension;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: selectedDimension,
              onChanged: (value) {
                if (value != null) {
                  context
                      .read<QuestionnaireCubit>()
                      .updateSelectedDimension(value);
                }
              },
              items: localizedLabels.entries.map((entry) {
                return DropdownMenuItem(
                  value: entry.key,
                  child: Text(entry.value),
                );
              }).toList(),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  height: 250,
                  child: WellbeingLineChart(
                    title: '${localizedLabels[selectedDimension]} ${AppLocalizations.of(context)!.wellbeing}',
                    scoreExtractor: chartOptions[selectedDimension]!,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class WellbeingScoreData {
  final DateTime date;
  final int overallScore;
  final int autonomyScore;
  final int competenceScore;
  final int relatednessScore;

  WellbeingScoreData(this.date, this.overallScore, this.autonomyScore,
      this.competenceScore, this.relatednessScore);
}

class WellbeingScoreDisplayData {
  final String formattedDate;
  final int score;

  WellbeingScoreDisplayData({
    required this.formattedDate,
    required this.score,
  });
}
