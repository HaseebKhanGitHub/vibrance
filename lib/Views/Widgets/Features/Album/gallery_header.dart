import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryHeader extends StatelessWidget {
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
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
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
}
