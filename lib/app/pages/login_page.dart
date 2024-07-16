import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_critter/app/global_widgets/action_button.dart';
import 'package:healthy_critter/main.dart';
import 'package:healthy_critter/routing/routes.dart';
import 'package:healthy_critter/state/auth_state.dart';
import 'package:healthy_critter/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authStateActions = ref.watch(authStateProvider.notifier);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 164,
            right: 0,
            child: Center(
              child: Container(
                width: 32,
                height: 250,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceDim,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20))),
              ),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Healthy',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.w900,
                              color: mainRedColor)),
                  Text('Critter',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.w900,
                              color: mainGreenColor))
                ],
              ),
              Column(
                children: [
                  // ActionButton(
                  //   text: 'Sign Up',
                  //   buttonWidth: 225,
                  //   onPressed: () {},
                  // ),
                  // SizedBox(
                  //   height: 24,
                  // ),
                  // ActionButton(
                  //   text: 'Log In',
                  //   buttonType: ButtonType.minorAction,
                  //   buttonWidth: 225,
                  //   onPressed: () {},
                  // ),
                  // SizedBox(
                  //   height: 24,
                  // ),
                  ActionButton(
                    text: 'Login Test',
                    buttonWidth: 225,
                    onPressed: () async {
                      try {
                        final AuthResponse response = await supabase.auth
                            .signInWithPassword(
                                email: 'test@gmail.com', password: 'password1');

                        if (response.session != null && response.user != null) {
                          authStateActions.logIn(
                              response.session!, response.user!);
                          AppRoute().go(context);
                        } else {
                          print('Auth returned, but was empty');
                        }
                      } catch (e) {
                        print('Error:');
                        print(e.toString());
                      }
                    },
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ActionButton(
                    text: 'Login Dom',
                    buttonWidth: 225,
                    buttonType: ButtonType.minorAction,
                    onPressed: () async {
                      try {
                        final AuthResponse response = await supabase.auth
                            .signInWithPassword(
                                email: 'dompetriella@gmail.com',
                                password: 'password');

                        if (response.session != null && response.user != null) {
                          authStateActions.logIn(
                              response.session!, response.user!);
                          AppRoute().go(context);
                        } else {
                          print('Auth returned, but was empty');
                        }
                      } catch (e) {
                        print('Error:');
                        print(e.toString());
                      }
                    },
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
