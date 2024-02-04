import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/controller/employement_controller.dart';
import 'package:practise_28/utils/custom_icon_button.dart';
import 'package:practise_28/utils/custom_select_image.dart';
import 'package:practise_28/utils/custom_text_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';

class OtherDetail2 extends StatelessWidget {
  const OtherDetail2({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmploymentController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          const CustomTextField(
            lable: 'Certification',
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        text: 'Upload Certification',
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
                      "Select.pdf & docx files only",
                      style: GoogleFonts.montserrat(fontSize: 9),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            '    Professional Certificate Summary',
            style: GoogleFonts.montserrat(
                fontSize: 10, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 160,
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
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
                Text(
                  'If Other:',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Specialization:',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Passing Year:',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Percentage [%]:',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Certificate:',
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
        ],
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
