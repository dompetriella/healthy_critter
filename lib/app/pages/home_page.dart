import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_critter/state/auth_state.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authStateProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Expanded(
            child: ColoredBox(
              color: Colors.green,
              child: Center(
                child: Column(
                  children: [
                    Text('Hello ${authState.user?.email ?? '[NULL USER]'}')
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
