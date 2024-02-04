import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const CustomTextButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              side: const BorderSide(color: Colors.red)),
          onPressed: onTap,
          child: Text(
            label,
            style: GoogleFonts.montserrat(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.w600),
          )),
    );
  }
}
