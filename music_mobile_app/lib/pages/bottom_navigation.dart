import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/pages/composer_screen/composer.dart';
import 'package:music_mobile_app/pages/profile_screen/profile.dart';
import 'package:music_mobile_app/pages/sleep_screen/sleep.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}


class _MyBottomNavigationState extends State<MyBottomNavigation> {

  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    SleepScreen(),
    ComposerScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
    
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
     body: Center(
           child: _widgetOptions.elementAt(_selectedIndex),  
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_outlined),  
            label: 'Sleep',  
            backgroundColor: Colors.white   ),
            BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),  
            label: 'Composer',  
            backgroundColor: Colors.white   ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),  
            label: 'Profile',  
            backgroundColor: Colors.white   ), 
        ],
        
        backgroundColor: ColorPalette.bottomNaviColor,
        type: BottomNavigationBarType.fixed,  
        currentIndex: _selectedIndex,
        unselectedItemColor: ColorPalette.unselectedColor,
        selectedItemColor: ColorPalette.selectedColor,  
        iconSize: 30,  
        onTap: _onItemTapped,  
        ),
    );
  }
}