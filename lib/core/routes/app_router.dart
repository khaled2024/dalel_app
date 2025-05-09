import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/features/home/presentation/views/home_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: AppRouterConstants.splashScreen,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: AppRouterConstants.onBoardingScreen,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: AppRouterConstants.homeScreen,
      builder: (context, state) => HomeView(),
    ),
  ],
);
