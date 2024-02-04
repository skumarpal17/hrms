import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_28/controller/employement_controller.dart';

class ExperienceSummary extends StatelessWidget {
  const ExperienceSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyRadioButtonContainer(
            key: Key('FresherRadioButton'),
            radioGroupValue: controller.experience.toString(),
            radioValue: 'Fresher',
            label: 'Fresher',
            onChanged: (value) => controller.onRadioButtonChanged(value),
          ),
          const SizedBox(height: 16),
          MyRadioButtonContainer(
            key: Key('ExperienceRadioButton'),
            radioGroupValue: controller.experience.toString(),
            radioValue: 'Experience',
            label: 'Experience',
            onChanged: (value) => controller.onRadioButtonChanged(value),
          ),
        ],
      ),
    );
  }
}

class MyRadioButtonContainer extends StatelessWidget {
  final String radioGroupValue;
  final String radioValue;
  final String label;
  final Function(String?)? onChanged;

  const MyRadioButtonContainer({
    Key? key,
    required this.radioGroupValue,
    required this.radioValue,
    required this.label,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Set a fixed width or adjust as needed
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: const Color(0xff707070),
        ),
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff707070),
            blurRadius: 3,
            spreadRadius: 0.05,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
          RadioListTile(
            value: radioValue,
            groupValue: radioGroupValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
