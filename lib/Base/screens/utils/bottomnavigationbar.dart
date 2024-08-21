import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:oranga_sante1/Base/screens/Pages/viewpage.dart';
import 'package:oranga_sante1/constant.dart';

class BottomBAR extends StatefulWidget {
  const BottomBAR({super.key});

  @override
  State<BottomBAR> createState() => _BottomBARState();
}

class _BottomBARState extends State<BottomBAR> {
  // Cette dans cette zone qu'on declare les futures pages de l'app :!info pour le future dev

  final List<Widget> appScreens = [
    const ViewpageScreen(),
    const Text(" page 2"),
    const Text(" page 3"),
    const Text(" page 4"),
  ];
  int _SelectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: appScreens[_SelectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_calendar_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_calendar_filled),
              label: 'Appointement'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile'),
        ],
      ),
    );
  }
}
