import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:vibrance/Views/Homepage/dashBoard.dart';
import 'package:vibrance/Views/Profile/profile.dart';
import 'package:vibrance/Views/Widgets/Homepage/drawerListTile.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> iconList = [Icons.person, Icons.house, Icons.notifications];

  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 0);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        profile(),
        dashBoard(),
        Container(
          color: Colors.cyanAccent,
        ),
      ],
    );
  }

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
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 25),
                        child: CircularProfileAvatar(
                          "",
                          backgroundColor: Colors.cyan,
                          borderWidth: 1,
                          borderColor: Colors.purpleAccent,
                          elevation: 20,
                          radius: 40,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(
                              Icons.face,
                              size: 50,
                            );
                          },
                          onTap: () {
                            pageController.animateToPage(0,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                            Navigator.of(context).pop();
                          },
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return Container(
                                child: Center(
                                    child: CircularProgressIndicator()));
                          },
                        ),
                      )),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Haseeb Khan',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            Text(
                              'hk@gmail.com',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Premium',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(flex: 0, child: Divider()),
            Column(
              children: [
                drawerlisttile(Icons.credit_card, "Subscription"),
                drawerlisttile(Icons.settings, "Settings"),
                drawerlisttile(Icons.help, "Help"),
                drawerlisttile(Icons.feedback, "Feedback"),
                drawerlisttile(Icons.people, "Tell Others"),
                drawerlisttile(Icons.star_half, "Rate the App"),
                drawerlisttile(Icons.share, "Share"),
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(),
                drawerlisttile(Icons.logout, "Sign Out"),
              ],
            ))
          ],
        ),
      ),
      //mood ha ni
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
      body: pageViewSection(),
    );
  }
}
