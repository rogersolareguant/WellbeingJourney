import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/home_screen/home_charts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<QuestionnaireCubit>().loadHistoryFromFirebase();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/logo.png')),
              ),
              Text('Wellbeing Journey',
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.go('/home/settings');
            },
            icon: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.settings,
                color: Theme.of(context).primaryIconTheme.color,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 75),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 6,
                        shadowColor: Colors.black54,
                        textStyle: Theme.of(context).textTheme.titleSmall),
                    onPressed: () {
                      context.go('/home/questions');
                    },
                    icon: const Icon(Icons.play_arrow_rounded, size: 30),
                    label: Text(AppLocalizations.of(context)!.startTest),
                  ),
                  const SizedBox(height: 100),
                  // Gráfico general
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
                          title: AppLocalizations.of(context)!.wellbeingOverTime,
                          scoreExtractor: (e) => e.overallScore,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  const DimensionChartSwitcher(),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}