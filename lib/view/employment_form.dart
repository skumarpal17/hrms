import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/controller/employement_controller.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_stepper.dart';

class EmploymentForm extends StatelessWidget {
  const EmploymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());
    return AppCustomTheme(
      title: 'Employment Form',
      body: GetBuilder<EmploymentController>(builder: (_) {
        return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(CupertinoIcons.back, size: 22)),
                  SizedBox(
                    width: 170,
                    child: Text(
                      controller.header[controller.currentStep],
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    width: 190,
                    child: CustomStepper(
                      currentStep: controller.currentStep,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  children: controller.pages,
                  onPageChanged: (index) =>
                      controller.onPageChanged(index: index),
                ),
              ),
            ]));
      }),
    );
  }
}
