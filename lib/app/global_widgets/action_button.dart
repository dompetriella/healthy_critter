import 'package:flutter/material.dart';

enum ButtonType { majorAction, minorAction }

class ActionButton extends StatelessWidget {
  final String text;
  final double? buttonWidth;
  final ButtonType buttonType;
  final double verticalPadding;
  final double horizontalPadding;
  final VoidCallback onPressed;
  final Widget? trailingWidget;
  const ActionButton(
      {super.key,
      required this.text,
      this.buttonWidth,
      this.verticalPadding = 16,
      this.horizontalPadding = 32,
      this.trailingWidget,
      this.buttonType = ButtonType.majorAction,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 12,
            left: 0,
            right: 12,
            child: Container(
              decoration: BoxDecoration(
                  color: switch (buttonType) {
                ButtonType.majorAction =>
                  Theme.of(context).colorScheme.tertiaryFixed,
                ButtonType.minorAction =>
                  Theme.of(context).colorScheme.primaryFixed,
                _ => Theme.of(context).colorScheme.primaryFixed,
              }),
            ),
          ),
          Positioned(
            bottom: 12,
            top: 0,
            left: 12,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: switch (buttonType) {
                ButtonType.majorAction =>
                  Theme.of(context).colorScheme.tertiaryFixedDim,
                ButtonType.minorAction =>
                  Theme.of(context).colorScheme.primaryFixedDim,
                _ => Theme.of(context).colorScheme.primaryFixedDim,
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
            child: Container(
              constraints:
                  BoxConstraints(maxWidth: buttonWidth ?? double.maxFinite),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onTertiary,
                      padding: EdgeInsets.symmetric(
                          vertical: verticalPadding,
                          horizontal: horizontalPadding),
                      elevation: 0,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color:
                                    Theme.of(context).colorScheme.onTertiary),
                      ),
                      if (trailingWidget != null)
                        SizedBox(
                          width: 8,
                        ),
                      if (trailingWidget != null) trailingWidget!
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
