import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:zajil/core/route/route_names.dart';
import 'package:zajil/src/presentation/screens/login_screen.dart';

class AppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      initialLocation: loginPage,
      routes: [
        GoRoute(
          name: 'Login',
          path: loginPage,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: 'index',
          path: index,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: 'Home',
          path: homePage,
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
    return router;
  }
}


extension AppRouterNavigation on BuildContext {

  void navigateToLogin() {
    GoRouter.of(this).push(Uri(path: loginPage).toString());
  }

  void navigateToHome() {
    GoRouter.of(this).push(Uri(path: homePage).toString());
  }

}