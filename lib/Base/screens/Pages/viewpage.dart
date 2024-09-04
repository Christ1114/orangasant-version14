import 'package:flutter/material.dart';
import 'package:oranga_sante1/Base/Widgets/AllTextComponents.dart';
import 'package:oranga_sante1/Base/Widgets/app_text_all.dart';
import 'package:oranga_sante1/Base/Widgets/appdoubleText.dart';
import 'package:oranga_sante1/Base/Widgets/research_engine.dart';
import 'package:oranga_sante1/constant.dart';

class ViewpageScreen extends StatelessWidget {
  const ViewpageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextAll(
                            texthere: Alltextcomponents.healinesText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ResearchEngineScreen(),
                  const SizedBox(
                    height: 15,
                  ),
                  AppDoubleText(
                      firsText: Alltextcomponents.healines1Text1,
                      secondText: Alltextcomponents.healines1Text2)
                ],
              ),
            )
          ],
        ));
  }
}
