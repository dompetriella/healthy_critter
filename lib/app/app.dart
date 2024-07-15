import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_critter/routing/router.dart';
import 'package:healthy_critter/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'App',
      routerConfig: ref.watch(routerProvider),
      themeMode: ThemeMode.light,
      theme: lightTheme,
    );
  }
}
