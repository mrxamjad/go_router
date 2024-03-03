import 'package:flutter/material.dart';
import 'package:go_router_tutorial/projects/routes/app_route_configuration.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: myAppRouter().router.routeInformationParser,
      routerDelegate: myAppRouter().router.routerDelegate,
      routeInformationProvider: myAppRouter().router.routeInformationProvider,
    );
  }
}
