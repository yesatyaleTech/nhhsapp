import 'package:flutter/material.dart';

import '../widgets/section_button.dart';

class MomPage extends StatelessWidget {
  const MomPage({Key key}) : super(key: key);

  static const List momResources = [
    "Health Insurance",
    "Case Management",
    "Support Groups/Referrals",
    "Connection to Medical Home",
    "Pregnancy Resources",
    "Post-Partum Resources",
    "Parenting Classes"
  ];

  static const List momIcons = [
    Icons.class_,
    Icons.cases,
    Icons.group,
    Icons.medical_services,
    Icons.book,
    Icons.book,
    Icons.class__outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: momResources.length,
      itemBuilder: (context, index) {
        return SectionButton(momIcons[index], momResources[index]);
      },
    );
  }
}
