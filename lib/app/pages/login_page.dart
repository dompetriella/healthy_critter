import 'package:flutter/material.dart';
import 'package:healthy_critter/app/widgets/action_button.dart';
import 'package:healthy_critter/theme.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ActionButton(
                    text: 'Sign Up',
                    buttonWidth: 225,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ActionButton(
                    text: 'Log In',
                    buttonType: ButtonType.minorAction,
                    buttonWidth: 225,
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
