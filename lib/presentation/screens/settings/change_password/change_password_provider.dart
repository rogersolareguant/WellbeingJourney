import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeing_journey/domain/repository/user_repository.dart';
import 'package:wellbeing_journey/presentation/screens/settings/change_password/change_password.dart';
import 'package:wellbeing_journey/presentation/screens/settings/change_password/cubit/change_password_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/settings/change_password/screen_success_change_password_state.dart';
import 'package:wellbeing_journey/presentation/widgets/screen_error_state.dart';
import 'package:wellbeing_journey/presentation/widgets/screen_loading_state.dart';

class ChangePasswordProvider extends StatelessWidget {
  const ChangePasswordProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChangePasswordCubit(repository: context.read<UserRepository>()),
      child: const ChangePasswordScreen(),
    );
  }
}

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
        builder: (context, state) {
          switch (state.status) {
            case ChangePasswordStatus.init:
              return const ChangePassword();

            case ChangePasswordStatus.loaded:
              return const ScreenSuccessChangePassword();

            case ChangePasswordStatus.loading:
              return const ScreenLoadingState();

            case ChangePasswordStatus.error:
              return const ScreenErrorState();
          }
        },
      ),
    );
  }
}