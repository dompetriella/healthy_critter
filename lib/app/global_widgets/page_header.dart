import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/critter_profile_picture.dart';
import 'package:healthy_critter/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PageHeader extends StatelessWidget {
  final String headerText;
  const PageHeader({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                headerText,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primaryFixedDim),
              ),
              CritterProfilePicture(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
