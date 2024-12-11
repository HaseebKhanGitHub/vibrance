import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vibrance/Views/Features/Album/album_post.dart';
import 'package:vibrance/Views/Features/DeviceInfo/GeneralInfo/generalInfo.dart';

import '../../Widgets/Features/Album/gallery_header.dart';

class my_album extends StatelessWidget {
  const my_album({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(context, "0", "0", true, "Haseeb",
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
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
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
                  onPressed: () {
                    print(index);
                  },
                  child: GestureDetector(
                    child: Card(
                      color: Colors.grey,
                      child: Hero(
                        tag:
                            "https://collectionperformance.com/wp-content/uploads/2024/02/Capture-decran-2024-02-08-154311-min.jpg",
                        child: Image.network(
                            "https://collectionperformance.com/wp-content/uploads/2024/02/Capture-decran-2024-02-08-154311-min.jpg"),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: albumPost(),
                              type: PageTransitionType.fade));
                    },
                  ),
                );
              },
              staggeredTileBuilder: (index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 3),
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
            ),
          )
        ], //   main col ------------------------------------------------
      ),
    );
  }
}

/*class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final String tuVal;
  final String toVal;
  final bool iseditable;
  final String name;
  final String description;

  GalleryHeader(this.context, this.tuVal, this.toVal, this.iseditable,
      this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          color: Color(0xfffafad2),
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 1.0), color: Colors.grey, blurRadius: 6.0)
          ]),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: Colors.orangeAccent,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 1.0),
                      color: Colors.grey,
                      blurRadius: 6.0)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Gallery",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white),
                ),
                CircularProfileAvatar(
                  "",
                  radius: 40,
                  borderWidth: 1,
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.deepPurpleAccent,
                  elevation: 20.0,
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.face, size: 20);
                  },
                  cacheImage: true,
                  onTap: () {
                    null;
                  },
                  animateFromOldImageOnUrlChange: true,
                  placeHolder: (context, url) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: Colors.white),
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Total Uploads",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Text(
                      tuVal,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.red),
                    )
                  ],
                ),
                iseditable
                    ? GestureDetector(
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurpleAccent,
                          radius: 22,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.noHeader,
                            body: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      labelText: "Enter Album Description",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.green)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.purple))),
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  minLines: 2,
                                ),
                              ),
                            ),
                            btnOkOnPress: () {},
                          ).show();
                        },
                      )
                    : Container(),
                Column(
                  children: [
                    Text(
                      "Times Opened",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Text(
                      toVal,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.red),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/ //gallaery header moved to widget class
