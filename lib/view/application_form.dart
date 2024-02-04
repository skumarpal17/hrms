import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_dropown.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';
import 'package:practise_28/controller/dashboard_controller.dart';
import 'package:practise_28/data/data.dart';

class ApplicationForm extends StatelessWidget {
  const ApplicationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Dashboardcontroller());
    return AppCustomTheme(
      title: 'Application Form',
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(CupertinoIcons.back, size: 28)),
                  Text(
                    'Application Form',
                    style: GoogleFonts.montserrat(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomTextField(
                lable: 'Application Date',
                controller: controller.dateController,
                keyboardType: TextInputType.datetime,
                suffixIcon: IconButton(
                    onPressed: () => controller.selectDate(context),
                    icon: const Icon(Icons.calendar_month)),
              ),
              const SizedBox(height: 15),
              const CustomTextField(lable: 'Full Name'),
              const SizedBox(height: 15),
              const CustomTextField(
                lable: 'Email Id',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                lable: 'Contact No.',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              CustomDropDown(
                label: "Education",
                items: educationList,
                onChanged: (value) => controller.onEducation(value: value),
                selectedValue: controller.selectedEducation,
              ),
              const SizedBox(height: 15),
              CustomDropDown(
                label: "Experience",
                items: experienceList,
                onChanged: (value) => controller.onExperience(value: value),
                selectedValue: controller.selectedExperience,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                lable: 'Current CTC',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                lable: 'Expected CTC',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                lable: 'Notice Period',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              CustomDropDown(
                label: "Department",
                items: departmentList,
                onChanged: (value) => controller.onDepartment(value: value),
                selectedValue: controller.selectedDepartment,
              ),
              const SizedBox(height: 15),
              CustomDropDown(
                label: "Designation",
                items: designationtList,
                onChanged: (value) => controller.onDesignation(value: value),
                selectedValue: controller.selectedDesignation,
              ),
              const SizedBox(height: 15),
              CustomDropDown(
                label: "Prefferred work location",
                items: workLocationList,
                onChanged: (value) => controller.onWorkLocation(value: value),
                selectedValue: controller.selectedWorkLocation,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                onTap: () {
                  print("object");
                },
                readOnly: true,
                suffixIcon: const Icon(
                  Icons.file_upload_outlined,
                  size: 27,
                ),
                hintText: 'Resume Upload',
              ),
              Center(
                  child: Text(
                "Candidate will upload resume in World/Pdf only",
                style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 14),
              )),
              const SizedBox(height: 10),
              const CustomTextField(
                lable: 'Mail Configuration',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 85),
              const CustomElevatedButton(label: 'Send'),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
