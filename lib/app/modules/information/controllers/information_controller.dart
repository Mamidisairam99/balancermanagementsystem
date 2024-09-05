// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class InformationController extends GetxController {
   var selectedGender = 'Male'.obs; // Default value

  // Method to update the selected gender
  void updateGender(String gender) {
    selectedGender.value = gender;
  }
  final selectedMartialStaus = 'single'.obs; // Default value

  // Method to update the selected gender
  void updateStatus(String status) {
    selectedMartialStaus.value = status;
  }
  

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
