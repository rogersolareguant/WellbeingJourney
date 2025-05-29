import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/presentation/screens/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:wellbeing_journey/presentation/widgets/screen_error_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _spinController;
  late final AnimationController _fadeController;

  @override
  void initState() {
    super.initState();

    _spinController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _spinController.forward();

    _fadeController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeController.forward();

    context.read<SplashScreenCubit>().userLoaded();
  }

  @override
  void dispose() {
    _spinController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashScreenCubit, SplashScreenState>(
        listener: (context, state) {
          if (state.status == SplashScreenStatus.authenticated) {
            context.go('/home');
          } else if (state.status == SplashScreenStatus.unauthenticated) {
            context.go('/login');
          }
        },
        builder: (context, state) {
          if (state.status == SplashScreenStatus.error) {
            return const ScreenErrorState();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _spinController,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _spinController.value * 2 * pi,
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    );
                  },
                ),
                FadeTransition(
                  opacity: _fadeController,
                  child: Image.asset(
                    'assets/images/wellbeing_journey.png',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
