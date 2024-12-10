import 'package:flutter/material.dart';

class newPost extends StatefulWidget {
  const newPost({super.key});

  @override
  State<newPost> createState() => _newPostState();
}

class _newPostState extends State<newPost> {
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
        leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: ListView(
        children: [
          Container(),
          SizedBox(height: 20),
          Container(
            height: 300,
            width: double.infinity,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://st4.depositphotos.com/1000423/23971/i/1600/depositphotos_239719906-stock-photo-networking-as-global-concept.jpg"),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ), // CircleAvatar
            title: Container(
              width: 250.0,
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  hintText: "Write a caption...",
                  border: InputBorder.none,
                ), // InputDecoration
                onChanged: (value) {},
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Color(0xffFFD700)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ), // ButtonStyle

                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.6),
                  child: Text(
                    "POST PICTURE",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
