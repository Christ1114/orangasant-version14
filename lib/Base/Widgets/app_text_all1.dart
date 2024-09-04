import 'package:flutter/material.dart';
import 'package:oranga_sante1/Base/Widgets/app_style_text.dart';
import 'package:oranga_sante1/constant.dart';

class AppTextAll1 extends StatelessWidget {
  const AppTextAll1({
    super.key,
    required this.texthere,
  });

  final String texthere;

  @override
  Widget build(BuildContext context) {
    return Text(
      texthere,
      style: TextStyle(
        color: greenCircle,
        fontSize: HeadlinesTextApp.sizeTxt2,
        fontWeight: HeadlinesTextApp.weightTxt1,
      ),
    );
  }
}
