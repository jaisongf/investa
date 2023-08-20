import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:universe/screens/Portfolio/Portfolio_screen.dart';
import 'package:universe/screens/Profile/Profile_screen.dart';
import 'package:universe/screens/Universe/Universe_screen.dart';

import '../../config/constant.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Portfolio"),
  BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Universe"),
  BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile")
];

List<Widget> bottomNavScreen = <Widget>[
  PortfolioScreen(),
  UniverseScreen(),
  ProfileScreen(),
];
const List<String> appBarTitles = ["Portfolio", "Universe", "Profile"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  void _onBottomNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _appBarIcons(appIcon) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF27283A90),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Color(0xFF27283A), width: 1),
          ),
          child: Center(
            child: SvgPicture.asset(appIcon, // Replace with your SVG asset path
                width: 24,
                height: 24,
                color: Color(0xFF9496A3)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Constant.bgDark,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appBarTitles[_currentIndex],
                style: TextStyle(
                    fontSize: 18,
                    color: Constant.bgWhite,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Saturday, 19th August 2023",
                style: TextStyle(
                    fontSize: 14,
                    color: Constant.subTxtCol,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          actions: [
            _appBarIcons("assets/notification_ic.svg"),
            const SizedBox(width: 8),
            _appBarIcons("assets/star_ic.svg")
          ]),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 48.0),
                if (_currentIndex == 0) PortfolioScreen(),
                if (_currentIndex == 1) UniverseScreen(),
                if (_currentIndex == 2) ProfileScreen(),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Constant.bgDark,
        currentIndex: _currentIndex,
        onTap: _onBottomNavItemTapped,
        items: bottomNavItems,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
