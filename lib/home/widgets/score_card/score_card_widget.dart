import 'package:flutter/material.dart';

import 'package:dev_quiz_flutter_jpvp/core/app_colors.dart';
import 'package:dev_quiz_flutter_jpvp/core/core.dart';
import 'package:dev_quiz_flutter_jpvp/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  final double percent;
  const ScoreCardWidget({
    Key? key,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        height: 136,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(
                  percent: percent,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vamos começar',
                        style: AppTextStyles.heading,
                      ),
                      Text(
                        'Complete os desafios e avance em conhecimento',
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
