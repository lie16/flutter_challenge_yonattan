import 'package:go_router/go_router.dart';

import '../feature/login/presentation/login_screen.dart';
import '../feature/splash/presentation/splash_screen.dart';

enum AppRoute {
  splashScreen,
  login,
}

final router = GoRouter(
  initialLocation: '/login',
  debugLogDiagnostics: true,
  routerNeglect: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.splashScreen.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: '/login',
      name: AppRoute.login.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),
  ],
);
