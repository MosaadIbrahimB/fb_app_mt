import 'package:facebook_app_mt/presentation/widget/profile_image_widget.dart';
import 'package:facebook_app_mt/presentation/widget/profile_name_widget.dart';
import 'package:facebook_app_mt/presentation/widget/remove_post_widget.dart';
import 'package:flutter/material.dart';

class ProfileRowHeadWidget extends StatelessWidget {
  final ProfileRowHeadModel profileRowHeadModel;

  const ProfileRowHeadWidget({
    super.key,
    required this.profileRowHeadModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImageWidget(
          image: profileRowHeadModel.image,
        ),
        const SizedBox(width: 12),
        ProfileNameWidget(
          time: profileRowHeadModel.time,
          name: profileRowHeadModel.name,
          isVerified: profileRowHeadModel.isVerified,
        ),
        const Expanded(child: SizedBox()),
        const RemovePostWidget(),
      ],
    );
  }
}

class ProfileRowHeadModel {
  final String image;
  final String name;
  final String time;
  final bool? isVerified;

  ProfileRowHeadModel(
      {this.isVerified = false,
      required this.image,
      required this.name,
      required this.time});
}
