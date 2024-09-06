import 'package:flutter/material.dart';

class IconButtonAppBarSearchWidget extends StatelessWidget {
  final IconData? icon;

  const IconButtonAppBarSearchWidget({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(backgroundColor: Colors.grey[300]),
      onPressed: () {},
      icon: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
