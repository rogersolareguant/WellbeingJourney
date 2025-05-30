import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  List<Widget> getRecommendations(List<String> recs) {
    return recs
        .map((rec) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text("• $rec"),
            ))
        .toList();
  }

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
                        AppLocalizations.of(context)!.wellbeingRecommendations,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      AppLocalizations.of(context)!.improveWelbeing,
                    ),
                    const SizedBox(height: 25),

               
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(height: 10),
                            ...getRecommendations(state.recommendationsAutonomy),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(height: 10),
                            ...getRecommendations(state.recommendationsCompetence),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(height: 10),
                            ...getRecommendations(state.recommendationsRelatedness),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FilledButton(
                          onPressed: () {
                            context.go('/results');
                          },
                          child: Text(AppLocalizations.of(context)!.results),
                        ),
                        const Spacer(),
                        FilledButton(
                          onPressed: () {
                            context.read<QuestionnaireCubit>().saveAnswersToFirebase();
                            context.read<QuestionnaireCubit>().reset();
                            context.go('/home');
                          },
                          child: Text(AppLocalizations.of(context)!.goHome),
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
}
