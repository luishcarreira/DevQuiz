import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroudColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;
  final VoidCallback onTap;
  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroudColor,
    required this.fontColor,
    required this.borderColor,
    required this.overlayColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroudColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen,
        this.overlayColor = AppColors.green,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.white({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroudColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.overlayColor = AppColors.lightGrey,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.purple({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroudColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen,
        this.overlayColor = AppColors.white,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.transparent({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroudColor = Colors.transparent,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.overlayColor = AppColors.lightGrey,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(overlayColor),
            backgroundColor: MaterialStateProperty.all(backgroudColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            side: MaterialStateProperty.all(BorderSide(
              color: borderColor,
            ))),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
