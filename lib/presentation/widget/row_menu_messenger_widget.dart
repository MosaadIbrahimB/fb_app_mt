import 'package:facebook_app_mt/presentation/widget/profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_image_path.dart';
import 'icon_button_app_bar_search_widget.dart';
import 'image_icon_widget.dart';
class RowMenuMessengerWidget extends StatelessWidget {
  const RowMenuMessengerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageIconWidget(pathImage: "assets/images/menu.png"),
        SizedBox(width: 5),
        ImageIconWidget(pathImage: "assets/images/messenger.png"),
        SizedBox(width: 5),
        IconButtonAppBarSearchWidget(
          icon: Icons.notifications,
        ),
        SizedBox(width: 5),
        ProfileImageWidget(
          image: AppImagePath.imageInfo1,
          radius: 38,
        ),
      ],
    );
  }
}
