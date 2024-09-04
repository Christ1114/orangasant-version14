import 'package:flutter/material.dart';
import 'package:oranga_sante1/constant.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.firsText, required this.secondText});

  final String firsText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firsText,
          style: TextStyle(
            color: greenCircle,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
          decoration: BoxDecoration(
              color: greyColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: InkWell(
            onTap: () {},
            child: Text(
              secondText,
              style: TextStyle(
                color: primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
