import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/action_button.dart';
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
        Expanded(
          child: Container(
            child: ListView(
              children: [
                ExpandedCritterTile(),
                CritterTile(),
                SizedBox(
                  height: 24,
                ),
                ActionButton(
                    text: 'Add New Critter',
                    buttonWidth: 280,
                    verticalPadding: 12,
                    trailingWidget: Icon(Icons.add),
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CritterTile extends StatelessWidget {
  const CritterTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 4, right: 4),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Colors.black.withOpacity(.25))
            ],
            border: Border.all(
                color: Theme.of(context).colorScheme.primary, width: 8)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                    width: 95,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'A Gecko Name Here',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  left: 14,
                  bottom: 12,
                  child: Transform.scale(
                      scale: 1.2,
                      child: CritterProfilePicture(
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryFixed,
                      )))
            ],
          ),
        ),
      ),
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
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          foregroundColor: Theme.of(context).colorScheme.tertiary),
      onPressed: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CritterProfilePicture(
                scale: 1.8,
                backgroundColor: Theme.of(context).colorScheme.tertiary,
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
