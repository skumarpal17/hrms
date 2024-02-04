import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/controller/dashboard_controller.dart';
import 'package:practise_28/routes/route.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:practise_28/utils/custom_google_button.dart';
import 'package:practise_28/utils/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Dashboardcontroller());
    return AppCustomTheme(
      title: 'Login Screen',
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: GetBuilder<Dashboardcontroller>(builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                RichText(
                  text: TextSpan(
                    text: 'Welcome to ',
                    style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'HRMS',
                        style: GoogleFonts.montserrat(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff0047FF)),
                      ),
                      TextSpan(
                        text: '\n    Hello there Log in to continue',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 45),
                const CustomTextField(lable: 'Email'),
                const SizedBox(height: 20),
                CustomTextField(
                  lable: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () => controller.onVisible(),
                      icon: controller.isVisible
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => Get.toNamed(RouteName.forgetPassword),
                    child: Text(
                      "Forget Password?  ",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: const Color(0xff78786F)),
                    ),
                  ),
                ),
                const SizedBox(height: 170),
                CustomElevatedButton(
                  label: 'Login',
                  onTap: () => Get.toNamed(RouteName.managementDashboard),
                ),
                const SizedBox(height: 16),
                CustomElevatedButton(
                  label: 'Register',
                  onTap: () => Get.toNamed(RouteName.userRegister),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: CustomGoogleButton(
                    label: "Google",
                    onTap: () {},
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
