import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vibrance/Views/Features/Album/friends_album.dart';
import 'package:vibrance/Views/Features/Album/my_album.dart';
import 'package:vibrance/Views/Homepage/dashBoard.dart';
import 'package:vibrance/Views/Profile/profile.dart';

class album_main extends StatefulWidget {
  const album_main({super.key});

  @override
  State<album_main> createState() => _album_mainState();
}

class _album_mainState extends State<album_main>
    with SingleTickerProviderStateMixin {
  List<IconData> iconList = [Icons.person_outlined, Icons.people_outlined];

  int page = 0;
  int pageView = 0;
  PageController pageController = PageController(initialPage: 0);

  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [my_album(), friends_album()],
    );
  }

  initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    curvedAnimation = CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: pageViewSection(),

      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.blue,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Colors.blue.shade700,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //Bottom Navigation bar
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.blue,
        inactiveColor: Colors.black,
        notchSmoothness: NotchSmoothness.softEdge,
        splashSpeedInMilliseconds: 300,
        leftCornerRadius: 22,
        rightCornerRadius: 22,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(p0,
                duration: Duration(microseconds: 150), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
