import 'package:facebook_app_mt/presentation/widget/post_widget.dart';
import 'package:facebook_app_mt/presentation/widget/profile_row_head_widget.dart';
import 'package:flutter/material.dart';

import 'footer_post-widget.dart';
import 'like_rate_widget.dart';
class ContentPostWidget extends StatelessWidget {
  ContentPostModel contentPostModel;


  ContentPostWidget({super.key,required this.contentPostModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child:  Column(
            children: [
              ProfileRowHeadWidget(profileRowHeadModel:contentPostModel.profileRowHeadModel),
              const SizedBox(height: 6),
              contentPostModel.postModel==null?const SizedBox(height: 10,):
              PostWidget(postModel: contentPostModel.postModel),
               LikeRateWidget(likeRateModel: contentPostModel.likeRateModel!),
              const FooterPostWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ContentPostModel{
  final ProfileRowHeadModel profileRowHeadModel;
  final PostModel ?postModel;
  final  LikeRateModel? likeRateModel;

  ContentPostModel({ this.likeRateModel, this.postModel, required this.profileRowHeadModel});
}