import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  final Widget content;
  final double elevation;
  const ColorContainer({super.key, required this.content, this.elevation = 1});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          top: 12,
          left: 0,
          right: 12,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryFixed),
          ),
        ),
        Positioned(
          bottom: 12,
          top: 0,
          left: 12,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryFixedDim),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(1),
                border: Border.all(
                    color: Theme.of(context).colorScheme.tertiary, width: 8)),
            child: content,
          ),
        )
      ],
    );
    ;
  }
}
