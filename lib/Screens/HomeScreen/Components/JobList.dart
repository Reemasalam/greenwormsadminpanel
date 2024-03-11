import 'package:flutter/material.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/JobSheetCard.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              //  JobSheetCard(),
            ],
          ),
        ))
      ],
    );
  }
}
