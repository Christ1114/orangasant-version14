import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:oranga_sante1/Base/Widgets/AllTextComponents.dart';
import 'package:oranga_sante1/Base/Widgets/app_style_text.dart';
import 'package:oranga_sante1/constant.dart';

class ResearchEngineScreen extends StatelessWidget {
  const ResearchEngineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          color: greyColor.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(
            FluentSystemIcons.ic_fluent_search_regular,
            color: primaryColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            Alltextcomponents.searchText,
            style: TextStyle(
              color: SearchAppText.headlineColor,
              fontSize: SearchAppText.sizeTxt1,
              fontWeight: SearchAppText.weighTxt2,
            ),
          ),
        ],
      ),
    );
  }
}
