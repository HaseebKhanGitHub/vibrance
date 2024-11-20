import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

import '../../Widgets/Features/Album/gallery_header.dart';
import '../DeviceInfo/GeneralInfo/generalInfo.dart';

class friends_album extends StatefulWidget {
  const friends_album({super.key});

  @override
  State<friends_album> createState() => _friends_albumState();
}

class _friends_albumState extends State<friends_album> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(context, "0", "0", false, "Ali",
              "Tell your partner that what this album means to you!"),
          Container(
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              crossAxisCount: 4,
              itemCount: 6,
              itemBuilder: (context, index) {
                return FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 5.0,
                    menuItemExtent: 45,
                    menuBoxDecoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.all(Radius.circular(15.0))),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: true,
                    blurBackgroundColor: Colors.black54,
                    openWithTap: true,
                    // Open Focused-Menu on Tap rather than Long Press
                    menuOffset: 10.0,
                    // Offset value to show menuItem from the selected item
                    bottomOffsetHeight: 80.0,
                    // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                    menuItems: <FocusedMenuItem>[
                      // Add Each FocusedMenuItem  for Menu Options
                      FocusedMenuItem(
                          title: Text("Open"),
                          trailingIcon: Icon(Icons.open_in_new),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => generalInfo()));
                          }),
                      FocusedMenuItem(
                          title: Text("Share"),
                          trailingIcon: Icon(Icons.share),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text("Favorite"),
                          trailingIcon: Icon(Icons.favorite_border),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text(
                            "Delete",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          trailingIcon: Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {}),
                    ],
                    onPressed: () {},
                    child: Card(
                        child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/doodle.jpg",
                        ),
                      ],
                    )));
              },
              staggeredTileBuilder: (index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 3),
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
            ),
          )
        ],
      ),
    );
  }
}
