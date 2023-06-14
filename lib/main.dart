import 'package:flutter/material.dart';
import 'package:portfolio/app_view.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kacper Daniel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      builder: (_, child) => AppView(
        child: child!,
      ),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
