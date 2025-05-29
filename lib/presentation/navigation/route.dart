import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/home_screen/home_screen.dart';
import 'package:wellbeing_journey/presentation/screens/login/create_user/create_user_screen_provider.dart';
import 'package:wellbeing_journey/presentation/screens/login/login/login_screen_provider.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/recommendations/recommendations_screen.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/results_screen/results_screen.dart';
import 'package:wellbeing_journey/presentation/screens/settings/change_password/change_password_provider.dart';
import 'package:wellbeing_journey/presentation/screens/settings/settings_view_provider.dart';
import 'package:wellbeing_journey/presentation/screens/splash_screen/splash_screen.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/wellbeing_test/test_done.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/wellbeing_test/questions_page.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreenProvider(),
    routes: [
      GoRoute(
        path: 'createuser',
        builder: (context, state) => const CreateUserScreenProvider(),
      ),
    ],
  ),
  GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'questions',
          builder: (context, state) => const QuestionsPage(),
        ),
        GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsScreenProvider(),
            routes: [
              GoRoute(
                path: 'changepassword',
                builder: (context, state) => const ChangePasswordProvider(),
              )
            ]),
      ]),
  GoRoute(
    path: '/test_done',
    builder: (context, state) => const TestDone(),
  ),
  GoRoute(
      path: '/results',
      builder: (context, state) => const ResultsScreen(),
      routes: [
        GoRoute(
          path: 'recommendations',
          builder: (context, state) => const RecommendationsScreen(),
        )
      ])
]);
