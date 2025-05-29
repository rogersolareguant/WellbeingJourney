import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wellbeing_journey/presentation/extensions/extensions.dart';
import 'package:wellbeing_journey/presentation/screens/settings/cubit/settings_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).dialogBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: const [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: UserProfileSection(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: LanguageSetting(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: AppThemeSetting(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: SignOutButton(),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SettingsCubit>().state;

    return Container(
      padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/user-profile.webp'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.email.userName(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.email,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              IconButton(
                icon: const Icon(Icons.change_circle_outlined),
                onPressed: () {
                  context.go('/home/settings/changepassword');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              border: Border.all(color: Theme.of(context).cardColor, width: 3),
              borderRadius: BorderRadius.circular(10)),
          height: 100,
          width: 1000,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 5, 20),
                child: Icon(Icons.language),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 30, 20),
                  child: DropdownButton(
                      dropdownColor: Theme.of(context).dialogBackgroundColor,
                      iconEnabledColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      value: state.language,
                      onChanged: (selectedLanguage) {
                        if (selectedLanguage != null) {
                          context
                              .read<SettingsCubit>()
                              .updateLanguage(selectedLanguage);
                        }
                      },
                      items: [
                        DropdownMenuItem(
                            value: const Locale('en'),
                            child: Text(
                              AppLocalizations.of(context)!.english,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        DropdownMenuItem(
                            value: const Locale('es'),
                            child: Text(
                              AppLocalizations.of(context)!.spanish,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        DropdownMenuItem(
                            value: const Locale('ca'),
                            child: Text(
                              AppLocalizations.of(context)!.catalan,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ))
                      ]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AppThemeSetting extends StatelessWidget {
  const AppThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(Icons.brightness_6),
              const SizedBox(width: 10),
              Text(
                AppLocalizations.of(context)!.darkMode,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const Spacer(),
              Switch(
                value: state.darkMode,
                onChanged: (value) {
                  context.read<SettingsCubit>().updateAppTheme(value);
                },
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveThumbColor: const Color(0xFF5D5FEF),
                inactiveTrackColor: Colors.white,
                trackOutlineColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 172, 179, 224)),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(Theme.of(context).cardColor)),
      onPressed: () {
        context.read<SettingsCubit>().signOut();
        context.go('/login');
      },
      child: Text(
        AppLocalizations.of(context)!.signOut,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
