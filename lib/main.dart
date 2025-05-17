import 'package:flutter/material.dart';
import 'package:vurelo_test_app/src/commons/commons.dart';
import 'package:vurelo_test_app/src/core/core.dart';

import 'src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Vurelo Authentication Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: Routers().router,
    );
  }
}


