import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myBottomNavBar extends StatefulWidget {
  const myBottomNavBar({Key? key}) : super(key: key);

  @override
  State<myBottomNavBar> createState() => _myBottomNavBarState();
}

class _myBottomNavBarState extends State<myBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(
        top: 10,
        left: 15,
        right: 15,
      ),
      height: 70,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xff4C43A6), width: 1)),
      ),
      child: GNav(
        color: const Color(0xff4C43A6),
        activeColor: const Color(0xff4C43A6),
        tabActiveBorder: Border.all(color: const Color(0xff4C43A6)),
        tabBorderRadius: 20,
        tabBackgroundColor: Colors.white,
        // haptic: true,
        // tabShadow: [
        //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
        //   BoxShadow(
        //     color: Colors.white,
        //     offset: const Offset(0.0, 0.0),
        //     blurRadius: 0.0,
        //     spreadRadius: 0.0,
        //   ),
        // ],
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        tabs: [
          GButton(
            gap: 8,
            icon: Icons.home_filled,
            text: 'Home',
            leading: Container(
              child: Icon(
                Icons.home_filled,
                color: const Color(0xff4C43A6),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff4C43A6), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
          ),
          GButton(
            gap: 8,
            leading: Container(
              child: Icon(
                Icons.question_mark_rounded,
                color: const Color(0xff4C43A6),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff4C43A6), width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            icon: Icons.question_mark_rounded,
            text: 'Help',
            onPressed: () {},
          ),
          GButton(
            gap: 8,
            leading: Container(
              child: Icon(
                Icons.edit,
                color: const Color(0xff4C43A6),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff4C43A6), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: Icons.edit,
            text: 'Request',
            onPressed: () {},
          ),
          GButton(
            gap: 8,
            leading: Container(
              child: Icon(
                Icons.bar_chart_outlined,
                color: const Color(0xff4C43A6),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff4C43A6), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: Icons.bar_chart_outlined,
            text: 'Status',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
