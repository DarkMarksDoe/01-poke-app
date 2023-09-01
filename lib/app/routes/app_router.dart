import 'package:go_router/go_router.dart';
import 'package:pokipoke/app/features/home/presentation/home_page.dart';
import 'package:pokipoke/app/features/splash/splash_page.dart';
import 'package:pokipoke/app/routes/app_routes.dart';

/// [routerConfig] is the configuration for the [GoRouter] package.
///
/// [initialLocation] is set to [AppRoutes.splash] to show the [SplashPage] first.
///
/// All the routes are:
/// * [AppRoutes.splash] - [SplashPage]
/// * [AppRoutes.home] - [HomePage]
///
final routerConfig = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      name: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
