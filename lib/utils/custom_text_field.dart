import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String? lable;
  final Widget? widgetlabel;
  final Widget? suffixIcon;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final String? hintText;
  final Function()? onTap;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key,
      this.lable,
      this.suffixIcon,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.readOnly,
      this.hintText,
      this.widgetlabel,
      this.minLines,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: TextFormField(
        readOnly: readOnly ?? false,
        onTap: onTap,
        controller: controller,
        keyboardType: keyboardType,
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 2,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: hintText,
          alignLabelWithHint: true,
          hintStyle: GoogleFonts.montserrat(color: const Color(0xff707070)),
          label: widgetlabel ??
              (lable != null
                  ? Text(
                      lable.toString(),
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 12),
                    )
                  : null),
          suffixIcon: suffixIcon,
          fillColor: const Color(0xffF6F6F9),
          filled: true,
          isDense: true,
          enabledBorder: border(),
          focusedBorder: border(),
          disabledBorder: border(),
          errorBorder: border(),
          focusedErrorBorder: border(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
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
