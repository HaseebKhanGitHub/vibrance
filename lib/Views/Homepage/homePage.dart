import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';

class homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();
  List<IconData> iconList = [Icons.person, Icons.house, Icons.notifications];
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: 150,
          height: 150,
          child: Image.asset('assets/images/Logo.png',
              filterQuality: FilterQuality.high),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              _homepageKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/message.png',
              width: 35,
              height: 35,
            ),
          )
        ],
      ),
      drawer: GFDrawer(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (p0) {},
      ),
    );
  }
}
