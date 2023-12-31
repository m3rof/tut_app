import 'package:flutter/material.dart';
import 'package:tut_app/presentation/forgot_password/forgot_password_view.dart';
import 'package:tut_app/presentation/main/main_view.dart';
import 'package:tut_app/presentation/onboarding/view/onboarding_view.dart';
import 'package:tut_app/presentation/register/register_view.dart';
import 'package:tut_app/presentation/splash/splash_view.dart';
import 'package:tut_app/presentation/store_details/store_details_view.dart';

import '../login/login_view.dart';
import 'string_manager.dart';

class Routes{
  static const String splashRoute='/';
  static const String loginRoute='/login';
  static const String registerRoute='/register';
  static const String forgotPasswordRoute='/forgotPassword';
  static const String onBoarding='/onBoarding';
  static const String mainRoute='/main';
  static const String storeDetailsRoute='/storeDetails';

}


class RouteGenrator{

  static Route<dynamic> getRoute(RouteSettings settings){
    switch (settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) =>const SplashView(),);
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) =>const OnboardingView(),);
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>const LoginView(),);
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>const RegisterView(),);
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) =>const ForgotPasswordView(),);
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) =>const MainView(),);
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) =>const StoreDetailsView(),);
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
   return MaterialPageRoute(builder: (_)=>Scaffold(
     appBar: AppBar(
       title: Text(AppString.noRouteFound),
     ),
     body: Center(child: Text(AppString.noRouteFound)),
   ));
  }
}

