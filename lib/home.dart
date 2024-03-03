import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/about.dart';
import 'package:go_router_tutorial/projects/routes/app_route_constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(myAppRouteConstants.profileRouteName);

                // context.goNamed("about");

                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => About()));

                print("Clicked to goto About Page");
              },
              child: Text("About Page")),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(myAppRouteConstants.contactRouteName);
              },
              child: Text("Profile Page")),
          ElevatedButton(onPressed: () {}, child: Text("conatact")),
          ElevatedButton(onPressed: () {}, child: Text("Button")),
        ],
      ),
    );
  }
}
