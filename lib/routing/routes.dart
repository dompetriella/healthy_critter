import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
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
