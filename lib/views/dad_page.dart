import 'package:flutter/material.dart';
import '../widgets/section_button.dart';

class DadPage extends StatelessWidget {
  const DadPage({Key key}) : super(key: key);

  static const List dadResources = [
    "Parenting Classes",
    "Case Management",
    "Employment Navigation",
    "Support Groups",
    "Court Support"
  ];

  static const List dadIcons = [
    Icons.class_,
    Icons.cases,
    Icons.work,
    Icons.group,
    Icons.support,
  ];

  @override
  Widget build(BuildContext context) {
      return  ListView.builder(
        itemCount: dadResources.length,
        itemBuilder: (context, index) {
          return SectionButton(
            dadIcons[index],
            dadResources[index],
          );
        },
    );
  }
}
