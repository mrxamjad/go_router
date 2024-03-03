import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/about.dart';
import 'package:go_router_tutorial/contact.dart';
import 'package:go_router_tutorial/error_page_on_not_found.dart';
import 'package:go_router_tutorial/profile.dart';
import 'package:go_router_tutorial/projects/routes/app_route_constant.dart';

import '../../home.dart';

class myAppRouter {
  GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: myAppRouteConstants.homeRouteName,
        pageBuilder: (context, state) => const MaterialPage(
          child: Home(),
        ),
      ),
      GoRoute(
        path: "/about",
        name: myAppRouteConstants.aboutRouteName,
        pageBuilder: (context, state) => const MaterialPage(
          child: About(),
        ),
      ),
      GoRoute(
        path: "/contact",
        name: myAppRouteConstants.contactRouteName,
        pageBuilder: (context, state) => const MaterialPage(
          child: Contact(),
        ),
      ),
      GoRoute(
        path: "/profile",
        name: myAppRouteConstants.profileRouteName,
        pageBuilder: (context, state) => const MaterialPage(child: Profile()),
      )
    ],

    //for Error page on invalid url
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: ErrorPage()),
    // redirect: (context, state) {
    //   bool isAuth = true;

    //   if (isAuth && state.namedLocation == "home") {
    //     return myAppRouteConstants.aboutRouteName;
    //   } else {
    //     return myAppRouteConstants.contactRouteName;
    //   }
    // },
  );
}
