import 'package:flutter/material.dart';

class CritterProfilePicture extends StatelessWidget {
  final double scale;
  final double elevation;
  const CritterProfilePicture({super.key, this.scale = 1, this.elevation = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60 * scale,
      width: 60 * scale,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(500),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2 * (elevation / 2)),
                blurRadius: 0.5 * elevation,
                spreadRadius: 1 * elevation,
                color: Colors.black.withOpacity(.25))
          ]),
      child: Transform.translate(
        offset: Offset(0, -1.5 * scale),
        child: Center(
          child: Container(
            width: 54 * scale,
            height: 54 * scale,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(500)),
            child: Image.asset(
              'assets/images/gecko.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
