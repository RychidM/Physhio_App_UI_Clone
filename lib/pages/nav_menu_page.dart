import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:physio_app/misc/colors.dart';
import 'package:physio_app/pages/dashboard.dart';
import 'package:physio_app/pages/inbox.dart';
import 'package:physio_app/pages/profile.dart';
import 'package:physio_app/pages/todo.dart';

class NavMenuPage extends StatefulWidget {
  NavMenuPage({Key? key}) : super(key: key);

  @override
  State<NavMenuPage> createState() => _NavMenuPageState();
}

class _NavMenuPageState extends State<NavMenuPage> {
  int _pageIndex = 0;
  final List<Widget> _tabLists = [
    Dashboard(),
    InboxPage(),
    SchedulePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          _tabLists.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment(0, 1),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  selectedItemColor: AppColors.primaryColor,
                  unselectedItemColor: AppColors.primaryColor.withOpacity(.3),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: _pageIndex,
                  onTap: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_rounded), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message_outlined), label: "Inbox"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.calendar_month_outlined),
                        label: "Schedule"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline_rounded),
                        label: "Profile")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
