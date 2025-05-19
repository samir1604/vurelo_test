import 'package:go_router/go_router.dart';

import '../../features/features.dart';
import 'router_constants.dart';

class Routers {
  const Routers();

  GoRouter get router => _routes();

  GoRouter _routes() => GoRouter(
    initialLocation: RouterPath.onBoardingAuthPath,
    //'/onBoardingAuth/register',
    routes: <RouteBase>[_onBoardingAuth()],
    //TODO: Change to false, on release
    debugLogDiagnostics: true,
  );

  GoRoute _login() => GoRoute(
    path: RouterName.loginName,
    builder: (_, __) => const LoginPage(),
  );

  GoRoute _register() => GoRoute(
    path: RouterName.registerName,
    builder: (_, __) => const RegisterPage(),
  );

  GoRoute _onBoardingAuth() => GoRoute(
    name: RouterName.onBoardingAuthName,
    path: RouterPath.onBoardingAuthPath,
    builder: (_, __) => const OnboardingAuth(),
    routes: [_login(), _register()],
  );
}
