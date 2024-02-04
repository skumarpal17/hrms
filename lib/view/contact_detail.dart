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

class ContactDetail extends StatelessWidget {
  const ContactDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: GetBuilder<EmploymentController>(builder: (_) {
          return Column(children: [
            CustomTextField(
              widgetlabel: RichText(
                text: TextSpan(
                  text: 'Permanent Address(As per Aadhar Card) ',
                  style:
                      GoogleFonts.montserrat(fontSize: 12, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomDropDown(
                    items: indianStatesList,
                    selectedValue: controller.selectedState,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'State ',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: districtNamesList,
                    selectedValue: controller.selectedDistrict,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'District ',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: indianCitiesList,
                    selectedValue: controller.selectedCity,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'City',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: pincodeList,
                    selectedValue: controller.selectedPincode,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Pincode',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Checkbox(
                value: controller.isSameAsAbove,
                onChanged: (value) => controller.clickOnSameAsAbove(value),
              ),
              title: Text(
                'same as above',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ),
            const CustomTextField(
              lable: 'Temporary Address',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomDropDown(
                    items: indianStatesList,
                    selectedValue: controller.selectedTempState,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'State ',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: districtNamesList,
                    selectedValue: controller.selectedTempDistrict,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'District ',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: indianCitiesList,
                    selectedValue: controller.selectedTempCity,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'City',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomDropDown(
                    items: pincodeList,
                    selectedValue: controller.selectedTempPincode,
                    onChanged: (value) {},
                    widgetlabel: RichText(
                      text: TextSpan(
                        text: 'Pincode',
                        style: GoogleFonts.montserrat(
                            fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: GoogleFonts.montserrat(
                                fontSize: 11, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropDown(
              items: pincodeList,
              selectedValue: controller.selectedTempPincode,
              onChanged: (value) {},
              widgetlabel: RichText(
                text: TextSpan(
                  text: 'Family Background (Minimum 2 member mandatory)',
                  style:
                      GoogleFonts.montserrat(fontSize: 10, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: GoogleFonts.montserrat(
                          fontSize: 11, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropDown(
              items: pincodeList,
              selectedValue: controller.selectedTempPincode,
              onChanged: (value) {},
              widgetlabel: RichText(
                text: TextSpan(
                  text: 'Family Member Name(As Per Aadhar Card)',
                  style:
                      GoogleFonts.montserrat(fontSize: 10, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: GoogleFonts.montserrat(
                          fontSize: 11, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
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
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              height: 130,
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
                    'Name:',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Relation:',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Aadhar card:',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Action:',
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.w500),
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
            const SizedBox(
              height: 25,
            ),
          ]);
        }),
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
