import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/projects/routes/app_route_constant.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Contact"),
            ElevatedButton(
                onPressed: () {
                  context.replaceNamed(myAppRouteConstants.homeRouteName);
                },
                child: Text("Hello"))
          ],
        ),
      ),
    );
  }
}
