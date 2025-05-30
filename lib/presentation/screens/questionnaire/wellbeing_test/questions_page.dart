import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/data/wellbeing_data.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: wellbeingQuestions.length,
          itemBuilder: (context, index) {
            return QuestionCard(
              questionText: wellbeingQuestions[index].text,
              questionIndex: index,
              controller: _pageController,
              isLast: index == wellbeingQuestions.length - 1,
              isFirst: index == 0,
            );
          },
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String questionText;
  final int questionIndex;
  final PageController controller;
  final bool isLast;
  final bool isFirst;

  const QuestionCard({
    super.key,
    required this.questionText,
    required this.questionIndex,
    required this.controller,
    this.isLast = false,
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 100, 10),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: AppLocalizations.of(context)!.activity,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text:
                        AppLocalizations.of(context)!.agreeDisagree,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 115, 0, 115),
              child: Container(
                decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        questionText,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
                        builder: (context, state) {
                          return ToggleButtons(
                            isSelected: List.generate(
                              5,
                              (i) => state.selectedIndexes[questionIndex] == i,
                            ),
                            onPressed: (int i) {
                              context
                                  .read<QuestionnaireCubit>()
                                  .selectIndex(questionIndex, i);
                            },
                            borderRadius: BorderRadius.circular(12),
                            borderWidth: 1.5,
                            borderColor: Colors.black54,
                            selectedColor: Colors.white,
                            color: Theme.of(context).colorScheme.onSurface,
                            fillColor: Theme.of(context).colorScheme.primary,
                            splashColor: Theme.of(context).colorScheme.primary,
                            constraints:
                                const BoxConstraints(minHeight: 48, minWidth: 60),
                            textStyle: Theme.of(context).textTheme.bodyLarge,
                            children: const [
                              Padding(padding: EdgeInsets.all(8), child: Text('1')),
                              Padding(padding: EdgeInsets.all(8), child: Text('2')),
                              Padding(padding: EdgeInsets.all(8), child: Text('3')),
                              Padding(padding: EdgeInsets.all(8), child: Text('4')),
                              Padding(padding: EdgeInsets.all(8), child: Text('5')),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(AppLocalizations.of(context)!.disagree,
                              style: Theme.of(context).textTheme.bodySmall),
                          const Spacer(),
                          Text(AppLocalizations.of(context)!.agree,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: [
              if (isFirst)
                FilledButton(
                  onPressed: () => context.go('/home'),
                  child: Text(AppLocalizations.of(context)!.goBack),
                )
              else
                FilledButton(
                  onPressed: () => controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
                  child: Text(AppLocalizations.of(context)!.previous),
                ),
              const Spacer(),
              BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
                builder: (context, state) {
                  final hasAnswered =
                      state.selectedIndexes[questionIndex] != -1;

                  return FilledButton(
                    onPressed: hasAnswered
                        ? () {
                            if (isLast) {
                              context.read<QuestionnaireCubit>().submitAnswers();
                              context.go('/test_done');
                            } else {
                              controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          }
                        : null,
                    child: Text(isLast ? AppLocalizations.of(context)!.submit : AppLocalizations.of(context)!.next),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

