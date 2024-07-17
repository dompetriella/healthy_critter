import 'package:flutter/material.dart';
import 'package:healthy_critter/app/global_widgets/page_header.dart';

class MetricsPage extends StatelessWidget {
  const MetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PageHeader(headerText: 'Metrics')],
    );
  }
}
