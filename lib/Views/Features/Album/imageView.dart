import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class imageView extends StatelessWidget {
  String url;

  imageView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: NetworkImage(
            "https://collectionperformance.com/wp-content/uploads/2024/02/Capture-decran-2024-02-08-154311-min.jpg"),
        heroAttributes: PhotoViewHeroAttributes(
            tag:
                "https://collectionperformance.com/wp-content/uploads/2024/02/Capture-decran-2024-02-08-154311-min.jpg"),
      ),
    );
  }
}
