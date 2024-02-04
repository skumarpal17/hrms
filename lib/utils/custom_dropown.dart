import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatelessWidget {
  final String? hintText;
  final String? label;
  final Widget? widgetlabel;
  final List<String> items;
  final String? selectedValue;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  const CustomDropDown(
      {Key? key,
      required this.items,
      required this.selectedValue,
      required this.onChanged,
      this.validator,
      this.hintText,
      this.label,
      this.widgetlabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
          elevation: 1,
          hint: hintText == null
              ? null
              : Text(hintText!, style: TextStyle(color: Colors.grey.shade500)),
          value: selectedValue,
          onChanged: onChanged,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
            size: 32,
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style:
                    GoogleFonts.montserrat(fontSize: 16, color: Colors.black),
              ),
            );
          }).toList(),
          decoration: InputDecoration(
            fillColor: const Color(0xffF6F6F9),
            filled: true,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
            enabledBorder: border(),
            focusedBorder: border(),
            disabledBorder: border(),
            errorBorder: border(),
            focusedErrorBorder: border(),
            label: widgetlabel ??
                Text(
                  label.toString(),
                  style:
                      GoogleFonts.montserrat(color: Colors.black, fontSize: 12),
                ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          borderRadius: BorderRadius.circular(17),
          isExpanded: true,
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xff707070)),
        borderRadius: BorderRadius.circular(14));
  }
}
