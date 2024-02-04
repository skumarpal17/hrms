import 'package:get/get.dart';
import 'package:practise_28/routes/route.dart';

List<String> educationList = [
  "Doctor of Philosophy",
  "Master of Laws",
  "Master of Engineering "
];
List<String> experienceList = ["1 year", "2 year", "3 year"];
List<String> departmentList = ["Web", "App", "Testing", "Marketing"];
List<String> designationtList = ["Web", "App", "Testing", "Marketing"];
List<String> workLocationList = ["Mumbai", "Thane", "Pune", "Nagpur"];

List gridData = [
  {
    "icon": 'assets/icons/icon7.png',
    "label": 'APPLICATION FORM',
    "onTap": () => Get.toNamed(RouteName.applicationForm)
  },
  {
    "icon": 'assets/icons/icon15.png',
    "label": 'EMPLOYMENT FORM',
    "onTap": () => Get.toNamed(RouteName.employmentForm)
  },
  {"icon": 'assets/icons/icon13.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon11.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon8.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon10.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon9.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon12.png', "label": 'LOREM IPSUM', "onTap": () {}},
  {"icon": 'assets/icons/icon14.png', "label": 'LOREM IPSUM', "onTap": () {}}
];

List<String> genderList = ['Male', 'Female', 'Other'];
List<String> bloodGroupList = [
  'A+',
  'A-',
  'B+',
  'B-',
  'AB+',
  'AB-',
  'O+',
  'O-'
];
List<String> disabilityList = [
  'None',
  'Visual Impairment',
  'Hearing Impairment',
  'Mobility Impairment',
  'Cognitive Impairment',
  'Other'
];
List<String> maritalStatusList = [
  'Single',
  'Married',
  'Divorced',
  'Widowed',
  'Separated'
];

List<String> indianStatesList = [
  'Andhra Pradesh',
  'Maharashtra',
  'Uttar Pradesh',
  'Tamil Nadu',
  'Karnataka',
  'Kerala',
  'Gujarat',
  'Rajasthan',
  'West Bengal',
  'Punjab',
];

List<String> indianCitiesList = [
  'Mumbai',
  'Delhi',
  'Bangalore',
  'Hyderabad',
  'Chennai',
  'Kolkata',
  'Pune',
  'Ahmedabad',
  'Jaipur',
  'Lucknow',
];

List<String> districtNamesList = [
  'Delhi',
  'Mumbai Suburban',
  'Bangalore Urban',
  'Hyderabad',
  'Chennai',
  'Kolkata',
  'Pune',
  'Ahmedabad',
  'Jaipur',
  'Lucknow',
];

List<String> pincodeList = [
  '110001',
  '400001',
  '560001',
  '500001',
  '600001',
  '700001',
  '411001',
  '380001',
  '302001',
  '226001',
];

List<String> qualificationList = [
  'High School Diploma',
  'High School Certificate',
  'Diploma',
  'Associate Degree',
  'Professional Certifications',
  'Technical Certifications',
];

List<String> academicYear = [
  '2001',
  '2003',
  '2004',
  '2005',
  '2006',
  '2007',
];
