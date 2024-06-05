import 'package:appygo/pages/duel_stand_by/index.dart';
import 'package:appygo/pages/guide/index.dart';
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
    GetPage(
      name: AppRoutes.guide,
      page: () => const GuidePage(),
      binding: GuideBinding(),
    ),
    GetPage(
      name: AppRoutes.duelStandBy,
      page: () => const DuelStandByPage(),
      binding: DuelStandByBinding(),
    ),
  ];
}
