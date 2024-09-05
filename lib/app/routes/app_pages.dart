// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import 'package:my_vehicle_proj/app/modules/home/bindings/home_binding.dart';
import 'package:my_vehicle_proj/app/modules/home/views/home_view.dart';
import 'package:my_vehicle_proj/app/modules/information/bindings/information_binding.dart';
import 'package:my_vehicle_proj/app/modules/information/views/information_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INFORMATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION,
      page: () => InformationView(),
      binding: InformationBinding(),
    ),
  ];
}
