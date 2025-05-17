import 'package:go_router/go_router.dart';

import '../../features/features.dart';
import 'router_constants.dart';


class Routers {
  const Routers();

  GoRouter get router => _routes();

  GoRouter _routes() => GoRouter(
    initialLocation: RouterPath.registerPath,
    routes: <RouteBase>[
      _login(),
      _register(),
    ],
    //TODO: Change to false, on release
    debugLogDiagnostics: true,
  );

  GoRoute _login() => GoRoute(
    name: RouterName.loginName,
      path: RouterPath.loginPath,
  builder: (_, __) => const LoginPage());

  GoRoute _register() => GoRoute(
      name: RouterName.registerName,
      path: RouterPath.registerPath,
      builder: (_, __) => const RegisterPage());
}