// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $baseRoute,
    ];

RouteBase get $baseRoute => GoRouteData.$route(
      path: '/',
      factory: $BaseRouteExtension._fromState,
    );

extension $BaseRouteExtension on BaseRoute {
  static BaseRoute _fromState(GoRouterState state) => const BaseRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
