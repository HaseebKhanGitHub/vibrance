import 'package:flutter/material.dart';

class gradientButton extends StatelessWidget {
  final String title;
  final List<Color> gclr;
  final Color overlayColor;
  final bool isGradientVertical;

  gradientButton(
      this.title, this.gclr, this.overlayColor, this.isGradientVertical);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: isGradientVertical
                        ? Alignment.topCenter
                        : Alignment.centerLeft,
                    end: isGradientVertical
                        ? Alignment.bottomCenter
                        : Alignment.centerRight,
                    colors: gclr),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ElevatedButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              style: ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(overlayColor),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.transparent)),
            ),
          ),
        ),
      ),
    );
  }
}
