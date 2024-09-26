import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:vibrance/Views/Homepage/Dashboard/dashboard_gradient_feature.dart';

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Dashboard',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Your Friend',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
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
                            onTap: () {},
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            },
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.fiber_manual_record_rounded,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Rahim Perdesi',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.purple,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 27,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Bilal Street, Sui gas road,\nGujranwala',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.purple,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 60),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Offline',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'User Status',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'NA',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'Mood NA',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: dashboard_gradient_feature(
                    Icons.phone_android,
                    'Device Info',
                    [Color(0xff4FC174), Color(0xff00D7A9)],
                    Colors.white),
              ),
              Flexible(
                child: dashboard_gradient_feature(Icons.image, 'Gallery',
                    [Color(0xffefd216), Color(0xfffa9442)], Colors.white),
              ),
              Flexible(
                child: dashboard_gradient_feature(
                    Icons.emoji_emotions,
                    'Mood',
                    [Color(0xe5d66fee), Color(0xffa00cc2)],
                    Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Our Features',
                textAlign: TextAlign.left,
                style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.blue.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.queue_music_outlined,
                    'Playlist',
                    [Colors.white, Colors.white],
                    Colors.purple,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                ),
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.location_on,
                    'Location',
                    [Colors.white, Colors.white],
                    Colors.blue,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.list_alt,
                    'To-Do List',
                    [Colors.white, Colors.white],
                    Colors.brown,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                ),
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.book_outlined,
                    '    Diary',
                    [Colors.white, Colors.white],
                    Colors.black,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.sticky_note_2,
                    'Suprise Notes',
                    [Colors.white, Colors.white],
                    Colors.redAccent,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                ),
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.bedtime,
                    'Horoscopes',
                    [Colors.white, Colors.white],
                    Colors.green,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.sos,
                    'SOS',
                    [Colors.white, Colors.white],
                    Colors.orange,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                ),
                Flexible(
                  child: dashboard_gradient_feature(
                    Icons.event,
                    'Activity',
                    [Colors.white, Colors.white],
                    Colors.lightBlue.shade300,
                    fweight: FontWeight.w900,
                    iconsize: 30,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
