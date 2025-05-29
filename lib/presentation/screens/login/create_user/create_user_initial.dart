import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeing_journey/presentation/screens/login/create_user/widgets/button_create_user.dart';
import 'package:wellbeing_journey/presentation/screens/login/create_user/widgets/formulario_create_user.dart';
import 'package:wellbeing_journey/presentation/screens/login/cubit/login_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CreateUserInitial extends StatelessWidget {
  const CreateUserInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).primaryIconTheme,
          title:
              Text('Wellbeing Journey', style: Theme.of(context).textTheme.titleLarge),
        ),
        body: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 200, width: 200, child: Image.asset('assets/images/logo.png')),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.createUser,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (state.error.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    state.error,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FormularioCreateUser(),
              ),
              ButtonCreateUser(),
            ],
          );
        }));
  }
}
