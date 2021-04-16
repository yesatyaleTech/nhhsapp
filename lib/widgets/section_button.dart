import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  final IconData icon;
  final String name;
  const SectionButton(this.icon, this.name, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
        ),
        height: 100,
        width: 250,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(this.icon),
                  Text(this.name),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
