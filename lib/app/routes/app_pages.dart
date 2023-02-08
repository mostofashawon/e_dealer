import 'package:e_dealer/app/modules/sign_in/view/sign_in_screen.dart';
import 'package:e_dealer/app/modules/sign_up/view/sign_up_screen.dart';
import 'package:get/get.dart';

import 'package:e_dealer/app/modules/home/bindings/home_binding.dart';
import 'package:e_dealer/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpScreen(),
      // binding: HomeBinding(),
    ),
  ];
}
