import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class albumPost extends StatefulWidget {
  @override
  State<albumPost> createState() => _albumPostState();
}

class _albumPostState extends State<albumPost> {
  double currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
                child: Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/techimg.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: BackdropFilter(
                    filter: prefix0.ImageFilter.blur(sigmaX: 5, sigmaY: 8),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.orange,
                                    )),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child:
                                    Image.asset("assets/images/symbol.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/techimg.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              width: 250,
                              height: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 10),
                                  Slider(
                                    value: currentValue,
                                    // Current value of the slider
                                    min: 0,
                                    // Minimum value
                                    max: 100,
                                    // Maximum value
                                    divisions: 10,
                                    // Optional: Divisions for steps
                                    label: currentValue.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        currentValue = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Caption: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.cyan),
                        ),
                        IconButton(
                            onPressed: () {
                              AwesomeDialog(
                                      context: context,
                                      animType: AnimType.scale,
                                      dialogType: DialogType.noHeader,
                                      title: "Edit Caption",
                                      body: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: TextField(
                                            controller: null,
                                            decoration: InputDecoration(
                                              labelText: "Enter new caption",
                                              labelStyle: const TextStyle(
                                                color: Colors.black,
                                              ),
                                              fillColor: Colors.black,
                                              enabledBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: const BorderSide(
                                                  color: Color(0xff671AFC),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              focusedBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: const BorderSide(
                                                  color: Color(0xff671AFC),
                                                ),
                                              ),
                                            ),
                                            keyboardType:
                                                TextInputType.multiline,
                                            minLines: 1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                      dismissOnBackKeyPress: false,
                                      isDense: true,
                                      btnOkText: "Confirm Caption",
                                      btnOkOnPress: () {}

                                      //----------------------------------------
                                      )
                                  .show();
                            },
                            icon: Icon(Icons.edit, color: Colors.cyan))
                      ],
                    ),
                    FocusedMenuHolder(
                      menuWidth: MediaQuery.of(context).size.width * 0.28,
                      blurSize: 2.0,
                      menuItemExtent: 50,
                      menuBoxDecoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      duration: const Duration(milliseconds: 100),
                      animateMenuItems: true,
                      blurBackgroundColor: Colors.black54,
                      menuOffset: 10.0,
                      bottomOffsetHeight: 80.0,
                      menuItems: [
                        FocusedMenuItem(
                          trailingIcon: const Icon(Icons.copy),
                          title: const Text(
                            "Copy",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        FocusedMenuItem(
                          backgroundColor: Colors.grey,
                          trailingIcon:
                              const Icon(Icons.edit, color: Colors.white),
                          title: const Text(
                            "Edit",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            AwesomeDialog(
                                    context: context,
                                    animType: AnimType.scale,
                                    dialogType: DialogType.noHeader,
                                    title: "Edit Caption",
                                    body: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: TextField(
                                          controller: null,
                                          decoration: InputDecoration(
                                            labelText: "Enter new caption",
                                            labelStyle: const TextStyle(
                                              color: Colors.black,
                                            ),
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Color(0xff671AFC),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.black,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Color(0xff671AFC),
                                              ),
                                            ),
                                          ),
                                          keyboardType:
                                              TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: null,
                                        ),
                                      ),
                                    ),
                                    dismissOnBackKeyPress: false,
                                    isDense: true,
                                    btnOkText: "Confirm Caption",
                                    btnOkOnPress: () {}
                                    //----------------------------------------
                                    )
                                .show();
                          },
                        ),
                      ],
                      onPressed: () {},
                      child: ExpandableText(
                        "Your caption here",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        expandText: "show more",
                        maxLines: 2,
                        collapseText: "show less",
                        linkColor: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Comments",
                      textScaler: TextScaler.linear(1),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.28,
                          blurSize: 2.0,
                          menuItemExtent: 50,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10.0,
                          bottomOffsetHeight: 80.0,
                          menuItems: [
                            FocusedMenuItem(
                              trailingIcon: const Icon(Icons.copy),
                              title: const Text(
                                "Copy",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                            FocusedMenuItem(
                                backgroundColor: Colors.grey,
                                trailingIcon: const Icon(Icons.edit,
                                    color: Colors.white),
                                title: const Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {}),
                          ],
                          onPressed: () {},
                          child: ListTileMoreCustomizable(
                            title: Text(
                              "@haseeb",
                              textScaler: TextScaler.linear(1),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                              ),
                            ),
                            leading: GFAvatar(
                              backgroundColor: Colors.black,
                              size: 20,
                            ),
                            minLeadingWidth: 40,
                            minVerticalPadding: 10,
                            horizontalTitleGap: 0,
                            isThreeLine: false,
                            subtitle: Text(
                              "This is my comment",
                              textScaler: TextScaler.linear(1),
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            trailing: Text(
                              "1 min ago",
                              textScaler: TextScaler.linear(1),
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            onTap: null,
                            onLongPress: null,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      maxLines: 3,
                      minLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        hintText: "Start a conversation",
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.orange,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide:
                              BorderSide.none, // Removes the default border
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    );
  }
}
