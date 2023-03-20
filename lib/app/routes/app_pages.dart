import 'package:get/get.dart';
import 'package:tugas1/app/modules/bindings/bio_binding.dart';
import 'package:tugas1/app/modules/bindings/education_binding.dart';
import 'package:tugas1/app/modules/views/education_view.dart';

import '../modules/views/bio_view.dart';
import '../modules/views/home_view.dart';
import '../modules/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.onBoarding;

  static final routes = [
    GetPage(
      name: _Paths.onBoarding,
      page: () => const OnBoardingView(),
    ),
    GetPage(
      name: _Paths.homeScreen,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.bioScreen,
      page: () => const BioView(),
      binding: BioBinding(),
    ),
    GetPage(
      name: _Paths.eduScreen,
      page: () => const EducationView(),
      binding: EducationBinding(),
    ),
  ];
}
