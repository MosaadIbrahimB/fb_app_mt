import 'package:flutter/material.dart';

class LikeRateWidget extends StatelessWidget {
final  LikeRateModel likeRateModel;
  const LikeRateWidget({super.key, required this.likeRateModel});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const Icon(Icons.favorite, color: Colors.red),
        const Icon(Icons.thumb_up, color: Colors.blue),
        const SizedBox(width: 4),
        //textLike
        Text(likeRateModel.textLike!),
        const Expanded(child: SizedBox(width: 20, height: 40)),
        //textLike comments
        Text(likeRateModel.comment!),
        const SizedBox(width: 5),
        const Text("comments"),
        const SizedBox(width: 6),
        //textLike share
        Text(likeRateModel.share!),
        const SizedBox(width: 2),
        const Text("shares"),

        // Icon(Icons.mode_comment, color: Color(0xff606770)),
        // Icon(Icons.share, color: Color(0xff606770)),
      ],
    );
  }
}
class LikeRateModel{
  final String ?textLike;
  final String ?comment;
  final String ?share;

  LikeRateModel({this.textLike, this.comment, this.share});
}