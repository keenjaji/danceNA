import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

import 'package:flutter_login_ui/pages/main_page/camera.dart';
import 'package:flutter_login_ui/pages/main_page/home.dart';
import 'package:flutter_login_ui/pages/main_page/profile.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';
import 'login_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

int _currentIndex = 0;

class _MainPageState extends State<MainPage> {
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CameraPage(),
    ProfilePage(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  /*final _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.star, color: Colors.blue),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star, color: Colors.green),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star, color: Colors.pink),
    ),
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
