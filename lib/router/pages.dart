import 'package:appygo/pages/welcome/index.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'routes.dart';

class AppPages {
  static const initialRoute = AppRoutes.welcome;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
