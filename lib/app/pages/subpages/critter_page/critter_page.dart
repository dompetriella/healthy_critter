import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/color_container.dart';
import 'package:healthy_critter/app/global_widgets/color_seperator.dart';
import 'package:healthy_critter/app/global_widgets/critter_profile_picture.dart';
import 'package:healthy_critter/app/global_widgets/page_header.dart';

class CritterPage extends StatelessWidget {
  const CritterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageHeader(headerText: 'Critters'),
        SizedBox(
          height: 16,
        ),
        ExpandedCritterTile(),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 8)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 75,
                          color: Colors.red,
                        ),
                        Text(
                          'A Gecko Name Here',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ExpandedCritterTile extends StatelessWidget {
  const ExpandedCritterTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColorContainer(
        content: ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
      onPressed: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CritterProfilePicture(
                scale: 1.8,
              ),
              Column(
                children: [
                  Text("Crested Gecko",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    'Correlophus cillatus',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Yellow Boy Gecko",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface),
              )),
          SizedBox(
            height: 8,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Weight: 10.2g",
                  style: Theme.of(context).textTheme.bodySmall)),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Last Fed: 07/17/2024",
                  style: Theme.of(context).textTheme.bodySmall)),
          SizedBox(
            height: 16,
          )
        ],
      ),
    ));
  }
}
