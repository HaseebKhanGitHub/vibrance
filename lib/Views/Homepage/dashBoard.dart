import 'package:flutter/material.dart';

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    children: [Container(), Container()],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
