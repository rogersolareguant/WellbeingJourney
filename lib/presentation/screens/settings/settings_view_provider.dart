import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeing_journey/presentation/screens/settings/cubit/settings_cubit.dart';
import 'package:wellbeing_journey/presentation/screens/settings/settings_view.dart';
import 'package:wellbeing_journey/presentation/widgets/screen_error_state.dart';
import 'package:wellbeing_journey/presentation/widgets/screen_loading_state.dart';

class SettingsScreenProvider extends StatelessWidget {
  const SettingsScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    cubit.getEmail(); 

    return const SettingsView(); 
  }
}


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          switch (state.status) {
            case SettingsStatus.loading:
              return const ScreenLoadingState();

            case SettingsStatus.loaded:
              return const SafeArea(
                child: SettingsView(),
              );

            case SettingsStatus.error:
              return const ScreenErrorState();
          }
        },
      ),
    );
  }
}
