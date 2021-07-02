import 'package:get/get.dart';

import 'presentation/pages/home_page.dart';
import 'presentation/pages/home_register_page.dart';

abstract class Routes {
  static const String initial = '/';
  static const String homeRegister = '/register';
}

mixin AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => HomePage(),
      // bindings: [AppBinding()],
    ),
    GetPage(
      name: Routes.homeRegister,
      page: () => HomeRegisterPage(),
      // bindings: [AppBinding()],
    ),
  ];
}
