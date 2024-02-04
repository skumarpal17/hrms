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

class OtherDetails extends StatelessWidget {
  const OtherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<EmploymentController>(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 13,
                  ),
                  const CustomSelectImage(),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Upload Resume',
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.montserrat(
                                  fontSize: 13, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const CustomTextButton(label: 'Choose File'),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Select.jpg, .jpeg, .png files only",
                        style: GoogleFonts.montserrat(fontSize: 9),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: Checkbox(
                  value: controller.isSameAsAbove,
                  onChanged: (value) => controller.clickOnSameAsAbove(value),
                ),
                title: Text(
                  'Academic qualification (Minimum One Education is mandatory)',
                  style: GoogleFonts.montserrat(
                      fontSize: 10, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomDropDown(
                          label: 'Qualification',
                          items: qualificationList,
                          selectedValue: controller.selectedGender,
                          onChanged: (value) =>
                              controller.onGender(value: value))),
                  const Expanded(
                    child: CustomTextField(
                      lable: 'specialization',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomDropDown(
                          label: 'Academic Year',
                          items: qualificationList,
                          selectedValue: controller.selectedGender,
                          onChanged: (value) =>
                              controller.onGender(value: value))),
                  const Expanded(
                    child: CustomTextField(
                      lable: 'Marks[%] * ',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomSelectImage(),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Upload Aadhar Card',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.montserrat(
                                    fontSize: 13, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const CustomTextButton(label: 'Choose File'),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Select.jpg, .jpeg, .png files only",
                          style: GoogleFonts.montserrat(fontSize: 9),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xff167E12),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Icon(Icons.add, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                        strokeAlign: 1.0, color: const Color(0xff707070)),
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff707070),
                          blurRadius: 3,
                          spreadRadius: .05,
                          offset: Offset(0, 4))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Qualification:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'If Other:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Specialization:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Passing Year:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Percentage [%]:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Certificate:',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
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
