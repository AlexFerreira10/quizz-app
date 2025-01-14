import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/questions_sumary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return SummaryItem(itemData: data);
              },
            ).toList(),
          ),
        ),
      );
}
