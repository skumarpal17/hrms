import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomTheme(
      title: 'Reset Password',
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
                  'Enter New Password',
                  style: GoogleFonts.montserrat(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 63),
            RichText(
              text: TextSpan(
                text: '   Your new password must be different',
                style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade500),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n   from previously used password.',
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const CustomTextField(lable: 'New Password'),
            const SizedBox(height: 25),
            const CustomTextField(lable: 'Confirm Password'),
            const SizedBox(height: 160),
            const CustomElevatedButton(label: 'Send'),
          ],
        ),
      ),
    );
  }
}
