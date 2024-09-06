import 'package:facebook_app_mt/core/utils/app_text.dart';

import '../../core/utils/app_image_path.dart';
import '../widget/content_post_widget.dart';
import '../widget/like_rate_widget.dart';
import '../widget/post_widget.dart';
import '../widget/profile_row_head_widget.dart';

class HomeScreenViewModel {
  static List<ProfileRowHeadModel> profileRowHeadList = [
    ProfileRowHeadModel(
        image: AppImagePath.imageInfo1, name: "mohamed ali", time: "25 m",isVerified: true),
    ProfileRowHeadModel(
        image: AppImagePath.imageAK, name: "ahmed mohey", time: "1 h"),
    ProfileRowHeadModel(
        image: AppImagePath.imageTS, name: "Tharwat Samy ", time: "20 h",isVerified: true),
  ];

  static List<PostModel> postList = [
    PostModel(text: "welcome"),
    PostModel(text: "go home"),
    PostModel(text: AppText.tsText,image: AppImagePath.imageTSPost),

  ];

  static List<LikeRateModel> likeRateList = [
    LikeRateModel(textLike: "18", share: "10", comment: "5"),
    LikeRateModel(textLike: "1", share: "1", comment: "2"),
    LikeRateModel(textLike: "20", share: "30", comment: "80"),

  ];
  static List<ContentPostModel> contentPostList = List.generate(
    profileRowHeadList.length,
        (index) => ContentPostModel(
        profileRowHeadModel: profileRowHeadList[index],
        postModel: postList[index],
        likeRateModel: likeRateList[index]),
  );
}
