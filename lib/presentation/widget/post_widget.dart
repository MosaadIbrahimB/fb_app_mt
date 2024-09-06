import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final PostModel? postModel;

  const PostWidget({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          postModel?.text == null
              ? SizedBox()
              : Text(maxLines: 3,
                  postModel!.text ?? "",
            textAlign: TextAlign.start,
                  style:  const TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textDirection: TextDirection.rtl,
                ),
          const SizedBox(height: 8),
          postModel!.image == null
              ? const SizedBox()
              : SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                      child: Image.asset(
                        postModel!.image!,
                        fit: BoxFit.fill,
                      )),
                )
        ],
      ),
    );
  }
}

class PostModel {
  final String? text;
  final String? image;

  PostModel({this.text, this.image});
}
