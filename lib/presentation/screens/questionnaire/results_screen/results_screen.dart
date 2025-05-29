import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.wellbeingResults,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.self_improvement),
                                const SizedBox(width: 20),
                                Text(
                                  AppLocalizations.of(context)!.autonomy,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.positiveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.bestAutonomy.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noItems,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.improveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.worstAutonomy.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noImprove,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)!.autonomyChart,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 20),
                            _buildBarChart(
                              context,
                              AppLocalizations.of(context)!.autonomyScore,
                              state.autonomyScore.toDouble(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.military_tech),
                                const SizedBox(width: 20),
                                Text(
                                  AppLocalizations.of(context)!.competence,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.positiveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.bestCompetence.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noItems,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.improveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.worstCompetence.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noImprove,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)!.competenceChart,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 20),
                            _buildBarChart(
                              context,
                              AppLocalizations.of(context)!.competenceScore,
                              state.competenceScore.toDouble(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.diversity_3),
                                const SizedBox(width: 20),
                                Text(
                                  AppLocalizations.of(context)!.relatedness,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.positiveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.bestRelatedness.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noItems,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppLocalizations.of(context)!.improveItems,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            _buildQuestions(
                              context,
                              state.worstRelatedness.map((q) => q.text).toList(),
                              AppLocalizations.of(context)!.noImprove,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)!.relatednessChart,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 20),
                            _buildBarChart(
                              context,
                              AppLocalizations.of(context)!.relatednessScore,
                              state.relatednessScore.toDouble(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Divider(color: Theme.of(context).secondaryHeaderColor),
                    const SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.overallScore,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            _buildRadialChart(context, state.overall.toDouble()),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () {
                            context.go('/results/recommendations');
                          },
                          child: Text(AppLocalizations.of(context)!.next),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBarChart(BuildContext context, String category, double percentage) {
    final data = [_ScoreData(category, percentage)];
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        labelStyle: const TextStyle(color: Colors.black),
        axisLine: const AxisLine(color: Colors.black),
        majorTickLines: const MajorTickLines(color: Colors.black),
        minorTickLines: const MinorTickLines(color: Colors.black),
        title: AxisTitle(
          textStyle: const TextStyle(color: Colors.black),
        ),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 100,
        interval: 20,
        labelStyle: const TextStyle(color: Colors.black),
        axisLine: const AxisLine(color: Colors.black),
        majorTickLines: const MajorTickLines(color: Colors.black),
        minorTickLines: const MinorTickLines(color: Colors.black),
        title: AxisTitle(
          text: AppLocalizations.of(context)!.percentage,
          textStyle: const TextStyle(color: Colors.black),
        ),
      ),
      series: <ChartSeries<_ScoreData, String>>[
        ColumnSeries<_ScoreData, String>(
          dataSource: data,
          xValueMapper: (_ScoreData score, _) => score.category,
          yValueMapper: (_ScoreData score, _) => score.value,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            textStyle: TextStyle(color: Colors.black),
          ),
          color: Colors.blueAccent,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        )
      ],
    );
  }

  Widget _buildRadialChart(BuildContext context, double overallScore) {
    final data = [_ScoreData(AppLocalizations.of(context)!.overall, overallScore)];
    return SfCircularChart(
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
          widget: Text(
            '${overallScore.toStringAsFixed(1)}%',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
      series: <CircularSeries>[
        RadialBarSeries<_ScoreData, String>(
          dataSource: data,
          xValueMapper: (_ScoreData score, _) => score.category,
          yValueMapper: (_ScoreData score, _) => score.value,
          radius: '100%',
          innerRadius: '70%',
          cornerStyle: CornerStyle.bothCurve,
          trackOpacity: 0.2,
          maximumValue: 100,
          dataLabelSettings: const DataLabelSettings(isVisible: false),
          pointColorMapper: (_, __) => Colors.deepPurple,
        )
      ],
    );
  }

  Widget _buildQuestions(
      BuildContext context, List<String> questions, String emptyText) {
    if (questions.isEmpty) {
      return Text(
        emptyText,
        style: Theme.of(context).textTheme.bodyMedium,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: questions
          .map((q) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text('• $q'),
              ))
          .toList(),
    );
  }
}

class _ScoreData {
  final String category;
  final double value;
  _ScoreData(this.category, this.value);
}
