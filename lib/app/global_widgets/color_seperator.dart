import 'package:flutter/material.dart';

class ColorSeperator extends StatelessWidget {
  const ColorSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36.0),
      child: Stack(
        children: [
          Positioned.fill(
              child: Transform.translate(
            offset: Offset(6, -6),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Theme.of(context).colorScheme.tertiaryFixedDim,
              ),
            ),
          )),
          Positioned.fill(
              child: Transform.translate(
            offset: Offset(-6, 6),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Theme.of(context).colorScheme.tertiaryFixed,
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.surface),
            ),
          )
        ],
      ),
    );
  }
}
