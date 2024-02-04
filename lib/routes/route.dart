import 'package:get/get.dart';
import 'package:practise_28/view/application_form.dart';
import 'package:practise_28/view/email_verification.dart';
import 'package:practise_28/view/employment_form.dart';
import 'package:practise_28/view/forget_password.dart';
import 'package:practise_28/view/login_screen.dart';
import 'package:practise_28/view/management_dashboard.dart';
import 'package:practise_28/view/reset_password.dart';
import 'package:practise_28/view/user_register.dart';

class RouteName {
  static String userRegister = '/userRegister';
  static String forgetPassword = '/forgetPassword';
  static String emailVerification = '/emailVerification';
  static String resetPassword = '/resetPassword';
  static String managementDashboard = '/managementDashboard';
  static String applicationForm = '/applicationForm';
  static String employmentForm = '/employmentForm';
}

class Routes {
  static final List<GetPage> pages = [
    GetPage(
      name: '/',
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteName.userRegister,
      page: () => const UserRegister(),
    ),
    GetPage(
      name: RouteName.forgetPassword,
      page: () => const ForgetPassword(),
    ),
    GetPage(
      name: RouteName.emailVerification,
      page: () => const EmailVerification(),
    ),
    GetPage(
      name: RouteName.resetPassword,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: RouteName.managementDashboard,
      page: () => const ManagementDashboard(),
    ),
    GetPage(
      name: RouteName.applicationForm,
      page: () => const ApplicationForm(),
    ),
    GetPage(
      name: RouteName.employmentForm,
      page: () => const EmploymentForm(),
    ),
  ];
}
