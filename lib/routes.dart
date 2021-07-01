import 'package:get/get.dart';

import 'presentation/pages/home_page.dart';

abstract class Routes {
  static const String initial = '/';
}

mixin AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => HomePage(),
      // bindings: [AppBinding()],
    ),
  ];
}
