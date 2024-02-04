import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomGoogleButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const CustomGoogleButton({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: 65,
      width: 185,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
                color: Color(0xff707070),
                blurRadius: 3,
                spreadRadius: .1,
                offset: Offset(0, 4))
          ]),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/icons/google.png'),
            Text(
              label,
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
