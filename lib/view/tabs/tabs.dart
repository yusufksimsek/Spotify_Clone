import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/view/tabs/home/home_page.dart';
import 'package:spotify_clone/view/tabs/more/more_page.dart';
import 'package:spotify_clone/view/tabs/search/search_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late  int _selectedIndex = 0;

  final List _screen = [
    HomePage(),
    SearchPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.white,
        enableFeedback: true,
        currentIndex: _selectedIndex,
        onTap: ((index){
          setState(() {
            _selectedIndex=index;
          });
        }),
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            activeIcon: Icon(Icons.more_horiz),
            label: '',
          ),
        ],
      ),
    );
  }
}
