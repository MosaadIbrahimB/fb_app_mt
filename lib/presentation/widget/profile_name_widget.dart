import 'package:flutter/material.dart';

class ProfileNameWidget extends StatelessWidget {
  final String name;
  final String time;
 final  bool ?isVerified;

  const ProfileNameWidget({
    super.key, required this.name, required this.time,this.isVerified=false
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(width: 8),
            isVerified==true?
            const Icon(
              Icons.verified,
              size: 20,
              color: Color(0xff0866ff),
            ):const SizedBox(),
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(time),
            const  SizedBox(width: 8),
            const  Icon(Icons.public),
          ],
        ),
      ],
    );
  }
}
