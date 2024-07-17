import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_critter/app/pages/subpages/critter_page/critter_page.dart';
import 'package:healthy_critter/app/pages/subpages/data_page/data_page.dart';
import 'package:healthy_critter/app/pages/subpages/metrics_page/metrics_page.dart';
import 'package:healthy_critter/app/pages/subpages/settings_page/settings_page.dart';
import 'package:healthy_critter/state/auth_state.dart';

final PageController pageController = PageController();

final List<Widget> pages = [
  CritterPage(),
  DataPage(),
  MetricsPage(),
  SettingsPage()
];

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: PageView(
                    controller: pageController,
                    children: pages,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          pageController.jumpToPage(0);
                        },
                        child: Text('Page1')),
                    ElevatedButton(
                        onPressed: () {
                          pageController.jumpToPage(1);
                        },
                        child: Text('Page2')),
                    ElevatedButton(
                        onPressed: () {
                          pageController.jumpToPage(2);
                        },
                        child: Text('Page3')),
                    ElevatedButton(
                        onPressed: () {
                          pageController.jumpToPage(3);
                        },
                        child: Text('Page4')),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
