import 'package:flutter/material.dart';
import '../Constants/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconGender, this.label});
  final IconData iconGender;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconGender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabeltextStyle,
        ),
      ],
    );
  }
}
