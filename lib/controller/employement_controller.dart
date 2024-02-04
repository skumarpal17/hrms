import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_28/view/contact_detail.dart';
import 'package:practise_28/view/other_detail2.dart';
import 'package:practise_28/view/other_details.dart';
import 'package:practise_28/view/personal_details.dart';

class EmploymentController extends GetxController {
  String? selectedGender;
  String? selectedBloodGroup;
  String? selectedDisability;
  String? selectedMaritalStatus;
  String? selectedCity;
  String? selectedState;
  String? selectedDistrict;
  String? selectedPincode;

  String? selectedTempCity;
  String? selectedTempState;
  String? selectedTempDistrict;
  String? selectedTempPincode;
  String? experience;

  int currentStep = 0;
  late PageController pageController;

  bool isSameAsAbove = false;

  List<String> header = [
    'Personal Detail',
    'Contact Details',
    'Other details',
    'Professional Certification'
  ];

  final dojController = TextEditingController();
  final dobController = TextEditingController();
  final realBirthDateController = TextEditingController();

  @override
  void onInit() {
    pageController = PageController(initialPage: currentStep);
    super.onInit();
  }

  Future<void> onDoj(BuildContext context) async {
    dojController.text = await selectDate(context);
    update();
  }

  Future<void> onDob(BuildContext context) async {
    dobController.text = await selectDate(context);
    update();
  }

  Future<void> onRealBirth(BuildContext context) async {
    realBirthDateController.text = await selectDate(context);
    update();
  }

  void onGender({String? value}) {
    selectedGender = value;
    update();
  }

  void onBloodGroup({String? value}) {
    selectedBloodGroup = value;
    update();
  }

  void onDisability({String? value}) {
    selectedDisability = value;
    update();
  }

  void onMarital({String? value}) {
    selectedMaritalStatus = value;
    update();
  }

  void onRadioButtonChanged(value) {
    experience = value;
  }

  List<Widget> pages = const [
    PersonalDetail(),
    ContactDetail(),
    OtherDetails(),
    OtherDetail2()
  ];

  void onStepontinue() {
    if (currentStep < pages.length - 1) {
      currentStep += 1;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);

      update();
    }
  }

  void onStepCancel() {
    if (currentStep > 0) {
      currentStep -= 1;
      pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);

      update();
    }
  }

  void onPageChanged({index}) {
    currentStep = index;
    update();
  }

  void clickOnSameAsAbove(value) {
    isSameAsAbove = value;
    print(value);
    update();
  }

  Future<String> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      return picked.toString().substring(0, 10);
    }
    return '';
  }
}
