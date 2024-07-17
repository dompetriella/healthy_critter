import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/page_header.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PageHeader(headerText: 'Settings')],
    );
  }
}
