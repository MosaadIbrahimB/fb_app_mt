import 'package:flutter/material.dart';
class FooterPostWidget extends StatelessWidget {
  const FooterPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.black26,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/images/like.png")),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/images/comment.png")),
            ),
            const Icon(Icons.share)
          ],
        )
      ],
    );
  }
}
