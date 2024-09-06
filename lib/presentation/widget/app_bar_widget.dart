import 'package:facebook_app_mt/presentation/widget/profile_image_widget.dart';
import 'package:facebook_app_mt/presentation/widget/row_menu_messenger_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_image_path.dart';
import 'icon_button_app_bar_search_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Row(
        children: [
          ProfileImageWidget(
            image: AppImagePath.imageFBLogo,
            radius: 45,
          ),
          SizedBox(width: 5),
          IconButtonAppBarSearchWidget(
            icon: Icons.search,
          ),
          Expanded(child: SizedBox()),
          RowMenuMessengerWidget()
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 70);
}
