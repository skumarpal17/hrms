import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/routes/route.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomTheme(
      title: 'User Register',
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                    'Register',
                    style: GoogleFonts.montserrat(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff0047FF)),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'First Name'),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'Last Name'),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'Email ID'),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'Mobile Number'),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'Aadhar number'),
              const SizedBox(height: 10),
              const CustomTextField(lable: 'Password'),
              const SizedBox(height: 10),
              const SizedBox(height: 80),
              CustomElevatedButton(
                label: 'Submit',
                onTap: () => Get.toNamed(RouteName.managementDashboard),
              ),
              const SizedBox(height: 10),
              CustomElevatedButton(
                label: 'Cancel',
                onTap: () => Get.back(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
