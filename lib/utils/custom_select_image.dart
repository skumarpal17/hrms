import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomSelectImage extends StatelessWidget {
  final Function()? onTap;
  const CustomSelectImage({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 105,
        height: 75,
        child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(15),
            dashPattern: const [3, 5],
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'assets/icons/select_image.png',
                ),
              ),
            )),
      ),
    );
  }
}
