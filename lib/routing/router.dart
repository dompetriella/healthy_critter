import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_critter/routing/router_notifier.dart';
import 'package:healthy_critter/routing/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
Raw<GoRouter> router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: BaseRoute.path,
    routes: notifier.routes,
    redirect: notifier.redirect,
  );
}
