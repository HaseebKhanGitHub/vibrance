import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibrance/Views/Widgets/Auth/authTextField.dart';

class inviteFriend extends StatelessWidget {
  const inviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.black,
            title: Container(
              height: 200,
              child: Image.asset(
                'assets/images/Logo.png',
                filterQuality: FilterQuality.high,
              ),
            ),
            leading: null,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.person,
                  color: Colors.purple,
                  size: 35,
                ),
              )
            ],
          )),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
            child: Text(
              'Find Your Friend',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      //width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10)
                          ]),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Hi Faizan, Type an exact username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.grey),
                          ))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10)
                      ]),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 400,
              height: 300,
              child: Image.asset(
                "assets/images/notitfication.jpg",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 40,
          ),
          Text(
            'Search for your friends on Vibrance or\n invite your friend to Vibrance',
            style: GoogleFonts.nunito(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Button action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Set the rounded corners here
              ),
            ),
            child: Text(
              'Invite a Friend',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
