import 'package:facebook_app_mt/presentation/widget/profile_image_widget.dart';
import 'package:flutter/material.dart';

class ImageIconWidget extends StatelessWidget {
  final String pathImage;

  const ImageIconWidget({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[300],
      child: ProfileImageWidget(
        image: pathImage,
        radius: 28,
      ),
    );
  }
}
