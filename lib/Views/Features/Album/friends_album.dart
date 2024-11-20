import 'package:flutter/cupertino.dart';

import '../../Widgets/Features/Album/gallery_header.dart';

class friends_album extends StatefulWidget {
  const friends_album({super.key});

  @override
  State<friends_album> createState() => _friends_albumState();
}

class _friends_albumState extends State<friends_album> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GalleryHeader(context, "0", "0", false, "Ali",
            "Tell your partner that what this album means to you!"),
      ],
    );
  }
}
