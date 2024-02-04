import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboardcontroller extends GetxController {
  String? selectedEducation;
  String? selectedExperience;
  String? selectedDepartment;
  String? selectedWorkLocation;
  String? selectedDesignation;

  bool isVisible = false;

  final dateController = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      dateController.text = picked.toString().substring(0, 10);
    }
  }

  void onEducation({String? value}) {
    selectedEducation = value;
    update();
  }

  void onExperience({String? value}) {
    selectedExperience = value;
    update();
  }

  void onDepartment({String? value}) {
    selectedDepartment = value;
    update();
  }

  void onDesignation({String? value}) {
    selectedDesignation = value;
    update();
  }

  void onWorkLocation({String? value}) {
    selectedWorkLocation = value;
    update();
  }

  void onVisible() {
    isVisible = !isVisible;
    update();
  }
}
