import 'package:flutter/material.dart';

class RemovePostWidget extends StatelessWidget {
  const RemovePostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.more_horiz,
          size: 30,
        ),
        Icon(
          Icons.close_rounded,
          size: 30,
        ),
      ],
    );
  }
}
