import 'package:booktickets_app/screens/profile_screens.dart';
import 'package:booktickets_app/screens/search_screen.dart';
import 'package:booktickets_app/screens/ticket_screens.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'home_screens.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndx = 0;
  static final List<Widget>_widgetOption = <Widget>[
    const HomeScreens(),
    const SearchScreen(),
    const TicketScreens(),
    const ProfileScreens(),
  ];

  void _onItemTapped (int index){
    setState((){
      _selectedIndx=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFeeedf2),
      // appBar: AppBar(
      //   title: Center(child: const Text("My tickets",style: TextStyle(fontSize: 21, color: Color.fromARGB(255, 32, 62, 86), fontWeight: FontWeight.bold),)),
      //   backgroundColor: const Color(0xFFeeedf2),
      // ),
      body: Center(
        child: _widgetOption[_selectedIndx],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndx,
        onTap: _onItemTapped,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: "search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: "Profile"),
        ],
      ),
    );
  }
}
