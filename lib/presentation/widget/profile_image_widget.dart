
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String image;
  final double radius;

  const ProfileImageWidget({
    super.key, required this.image,this.radius=60
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius,
      height: radius,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(

        image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
