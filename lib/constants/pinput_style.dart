import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPutStyle {
  final PinTheme defaultPinTheme;

  PinPutStyle()
      : defaultPinTheme = PinTheme(
          width: 60,
          height: 69,
          margin: const EdgeInsets.all(7),
          textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(30, 60, 87, 1),
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: const Color(0xffC4E2E8),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xff707070),
                  blurRadius: 3,
                  spreadRadius: .1,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(17),
          ),
        );

  PinTheme get focusedPinTheme => defaultPinTheme.copyDecorationWith(
        borderRadius: BorderRadius.circular(17),
      );

  PinTheme get submittedPinTheme => defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          color: const Color(0xffC4E2E8),
        ),
      );
}
