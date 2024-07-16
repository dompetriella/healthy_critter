import 'package:flutter/material.dart';

enum ButtonType { majorAction, minorAction }

class ActionButton extends StatelessWidget {
  final String text;
  final double buttonWidth;
  final ButtonType buttonType;
  final double verticalPadding;
  final VoidCallback onPressed;
  const ActionButton(
      {super.key,
      required this.text,
      this.buttonWidth = 200,
      this.verticalPadding = 20,
      this.buttonType = ButtonType.majorAction,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Transform.translate(
          offset: Offset(6, -6),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: switch (buttonType) {
                  ButtonType.majorAction =>
                    Theme.of(context).colorScheme.tertiaryFixedDim,
                  ButtonType.minorAction =>
                    Theme.of(context).colorScheme.primaryFixedDim,
                  _ => Theme.of(context).colorScheme.primaryFixedDim,
                }),
          ),
        )),
        Positioned.fill(
            child: Transform.translate(
          offset: Offset(-6, 6),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: switch (buttonType) {
                  ButtonType.majorAction =>
                    Theme.of(context).colorScheme.tertiaryFixed,
                  ButtonType.minorAction =>
                    Theme.of(context).colorScheme.primaryFixed,
                  _ => Theme.of(context).colorScheme.primaryFixed,
                }),
          ),
        )),
        SizedBox(
          width: buttonWidth,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onTertiary,
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                  backgroundColor: switch (buttonType) {
                    ButtonType.majorAction =>
                      Theme.of(context).colorScheme.tertiary,
                    ButtonType.minorAction =>
                      Theme.of(context).colorScheme.primary,
                    _ => Theme.of(context).colorScheme.primary,
                  }),
              onPressed: onPressed,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Theme.of(context).colorScheme.onTertiary),
              )),
        ),
      ],
    );
  }
}