class RouterName {
  const RouterName._();

  static const String homeName = 'home';
  static const String loginName = 'login';
  static const String registerName = 'register';
  static const String onBoardingAuthName = 'onBoardingAuth';
}

class RouterPath {
  const RouterPath._();

  static const String homePath = '/';
  static const String onBoardingAuthPath = '/onBoardingAuth';
}

class NavigationRoutes {
  const NavigationRoutes._();
  static const String navigateToRegister = '${RouterPath.onBoardingAuthPath}/${RouterName.registerName}';
  static const String navigateToLogin = '${RouterPath.onBoardingAuthPath}/${RouterName.loginName}';
}