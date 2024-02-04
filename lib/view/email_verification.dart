import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/constants/pinput_style.dart';
import 'package:practise_28/routes/route.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomTheme(
      title: 'Email Verification',
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(CupertinoIcons.back, size: 28)),
                Text(
                  'Email Verification',
                  style: GoogleFonts.montserrat(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 90),
            Center(
              child: Text(
                "Get Your Code",
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 65),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: RichText(
                text: TextSpan(
                  text: '   Please enter the 4 digit code that',
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade500),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\n   send to your mail address',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Pinput(
                defaultPinTheme: PinPutStyle().defaultPinTheme,
                focusedPinTheme: PinPutStyle().focusedPinTheme,
                submittedPinTheme: PinPutStyle().submittedPinTheme,
                validator: (s) {
                  return null;
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
            ),
            const SizedBox(height: 90),
            CustomElevatedButton(
              label: "Verify and proceed",
              onTap: () => Get.toNamed(RouteName.resetPassword),
            )
          ],
        ),
      ),
    );
  }
}
