import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/action_button.dart';
import 'package:healthy_critter/app/global_widgets/color_container.dart';
import 'package:healthy_critter/app/global_widgets/page_header.dart';
import 'package:healthy_critter/app/pages/home_page.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageHeader(headerText: 'Data'),
        ActionButton(
          text: 'Filters',
          onPressed: () {},
          verticalPadding: 8,
          buttonWidth: 160,
          trailingWidget: Icon(Icons.tune),
        ),
        SizedBox(
          height: 24,
        ),
        ColorContainer(
            content: Container(
          height: 400,
        ))
      ],
    );
  }
}
