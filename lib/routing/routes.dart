import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:healthy_critter/app/pages/home_page.dart';
import 'package:healthy_critter/app/pages/login_page.dart';

part 'routes.g.dart';

@TypedGoRoute<BaseRoute>(
  path: '/',
)
class BaseRoute extends GoRouteData {
  const BaseRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<AppRoute>(
  path: '/app',
)
class AppRoute extends GoRouteData {
  const AppRoute();
  static const path = '/app';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
