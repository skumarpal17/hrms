import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  const CustomStepper({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 14,
          child: CircleAvatar(
            backgroundColor: const Color(0xff0047FF),
            radius: 13,
            child: Text(
              "1",
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: currentStep > 0 ? const Color(0xff0047FF) : Colors.grey,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 14,
          child: CircleAvatar(
            backgroundColor:
                currentStep > 0 ? const Color(0xff0047FF) : Colors.grey,
            radius: 13,
            child: Text(
              "2",
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: currentStep > 1 ? const Color(0xff0047FF) : Colors.grey,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 14,
          child: CircleAvatar(
            backgroundColor:
                currentStep > 1 ? const Color(0xff0047FF) : Colors.grey,
            radius: 13,
            child: Text(
              "3",
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: currentStep > 2 ? const Color(0xff0047FF) : Colors.grey,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 14,
          child: CircleAvatar(
            backgroundColor:
                currentStep > 2 ? const Color(0xff0047FF) : Colors.grey,
            radius: 13,
            child: Text(
              "4",
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
