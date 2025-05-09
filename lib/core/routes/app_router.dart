import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/features/home/presentation/views/home_view.dart';
import 'package:dalel_app/features/login/presentation/views/loginView.dart';
import 'package:dalel_app/features/on_boarding/presentation/view/on_boardingView.dart';
import 'package:dalel_app/features/signUp/presentation/views/signUpView.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    // splash
    GoRoute(
      path: AppRouterConstants.splashScreen,
      builder: (context, state) => SplashView(),
    ),
    // on boarding
    GoRoute(
      path: AppRouterConstants.onBoardingScreen,
      builder: (context, state) => OnBoardingView(),
    ),
    //   sign up
    GoRoute(
      path: AppRouterConstants.signUpScreen,
      builder: (context, state) => SignUpView(),
    ),
    //  login
    GoRoute(
      path: AppRouterConstants.loginScreen,
      builder: (context, state) => LoginView(),
    ),

    //  home
    GoRoute(
      path: AppRouterConstants.homeScreen,
      builder: (context, state) => HomeView(),
    ),
  ],
);
