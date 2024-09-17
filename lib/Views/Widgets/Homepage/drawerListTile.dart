import 'package:flutter/material.dart';

class drawerlisttile extends StatelessWidget {
  final IconData iconName;
  final String tileTitle;

  drawerlisttile(this.iconName, this.tileTitle);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  iconName,
                  color: Colors.cyan,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tileTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Color(0xff2a3d66)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
