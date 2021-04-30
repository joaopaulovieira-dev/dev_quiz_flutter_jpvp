import 'package:dev_quiz_flutter_jpvp/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroudColor;
  final Color fontColor;
  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroudColor,
    required this.fontColor,
  });

  NextButtonWidget.green({required String label})
      : this.backgroudColor = AppColors.green,
        this.fontColor = AppColors.white,
        this.label = label;

  NextButtonWidget.white({required String label})
      : this.backgroudColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroudColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

//TODO AULA 04 00:26:10