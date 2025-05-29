import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeing_journey/data/repository/user_repository_impl.dart';
import 'package:wellbeing_journey/domain/repository/user_repository.dart';
import 'package:wellbeing_journey/presentation/navigation/route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wellbeing_journey/presentation/screens/login/cubit/login_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/cubit/questionnaire_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/settings/cubit/settings_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:wellbeing_journey/presentation/style/app_theme.dart';
import 'firebase_options.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final user = FirebaseAuth.instance.currentUser;

  runApp(MyApp(currentUser: user));
}

class MyApp extends StatelessWidget {
  final User? currentUser;

  const MyApp({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepositoryImpl(
              firebaseAuth: FirebaseAuth.instance,
              firebasestore: FirebaseFirestore.instance),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                SplashScreenCubit(repository: context.read<UserRepository>()),
          ),
          BlocProvider(
            create: (context) => LoginCubit(
              repository: context.read<UserRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) =>
                QuestionnaireCubit(repository: context.read<UserRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                SettingsCubit(repository: context.read<UserRepository>()),
          ),
        ],
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return MaterialApp.router(
              theme: AppTheme.standard,
              darkTheme: AppTheme.dark,
              themeMode: state.darkMode ? ThemeMode.dark : ThemeMode.light,
              title: 'Wellbeig Journey App',
              locale: state.language,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), 
                Locale('es'),
                Locale('ca'), 
              ],
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter,
            );
          },
        ),
      ),
    );
  }
}
