import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/controller/employement_controller.dart';
import 'package:practise_28/data/data.dart';
import 'package:practise_28/utils/custom_dropown.dart';
import 'package:practise_28/utils/custom_icon_button.dart';
import 'package:practise_28/utils/custom_select_image.dart';
import 'package:practise_28/utils/custom_text_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';

class PersonalDetail extends StatelessWidget {
  const PersonalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const CustomSelectImage(),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomTextButton(
                        onTap: () {},
                        label: 'Choose File',
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Select.jpg, .jpeg, .png files only",
                        style: GoogleFonts.montserrat(
                            fontSize: 9, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    controller: controller.dojController,
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Date Of Joining ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    readOnly: true,
                    suffixIcon: IconButton(
                        onPressed: () => controller.onDoj(context),
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Color(0xff18B0B0),
                          size: 23,
                        )),
                    onTap: () {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            CustomTextField(
              widgetlabel: RichText(
                text: TextSpan(
                  text: 'Full Name',
                  style:
                      GoogleFonts.montserrat(fontSize: 12, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' (as per aadhar card)',
                      style: GoogleFonts.montserrat(fontSize: 9),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: controller.dobController,
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Date Of Birth ',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n(as per document)',
                            style: GoogleFonts.montserrat(fontSize: 9),
                          ),
                          TextSpan(
                            text: '* ',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () => controller.onDob(context),
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Color(0xff18B0B0),
                        size: 23,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    controller: controller.realBirthDateController,
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Real Birth Date',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () => controller.onRealBirth(context),
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Color(0xff18B0B0),
                        size: 23,
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'First Name',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' *',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Middle Name',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' *',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Last Name',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' *',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomDropDown(
                        label: 'Gender',
                        items: genderList,
                        selectedValue: controller.selectedGender,
                        onChanged: (value) =>
                            controller.onGender(value: value))),
                const Expanded(
                    child: CustomTextField(
                  lable: 'Email ID',
                ))
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Expanded(
                  child: CustomTextField(
                    lable: 'Contact No',
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    label: 'Blood Group',
                    items: bloodGroupList,
                    selectedValue: controller.selectedBloodGroup,
                    onChanged: (value) => controller.onBloodGroup(value: value),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomDropDown(
                    label: 'Any Disability',
                    items: disabilityList,
                    selectedValue: controller.selectedDisability,
                    onChanged: (value) => controller.onDisability(value: value),
                  ),
                ),
                const Expanded(
                  child: CustomTextField(
                    minLines: 3,
                    maxLines: 4,
                    lable: 'Disability Details',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomDropDown(
                    label: 'Marital status',
                    items: maritalStatusList,
                    selectedValue: controller.selectedMaritalStatus,
                    onChanged: (value) => controller.onMarital(value: value),
                  ),
                ),
                const Expanded(
                  child: CustomTextField(
                    lable: 'Spouse Name',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomIconButton(
                  isRight: false,
                  label: 'Previous',
                  onTap: () => controller.onStepCancel(),
                ),
              ),
              Expanded(
                child: CustomIconButton(
                  isRight: true,
                  label: 'Next',
                  onTap: () => controller.onStepontinue(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
