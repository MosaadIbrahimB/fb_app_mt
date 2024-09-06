import 'package:facebook_app_mt/presentation/widget/content_post_widget.dart';
import 'package:flutter/material.dart';

import '../view_model/home_screen_view_model.dart';
import '../widget/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        body: ListView.builder(

          itemBuilder: (context, index) => ContentPostWidget(
              contentPostModel: HomeScreenViewModel.contentPostList[index]),
          itemCount: HomeScreenViewModel.contentPostList.length,
        ));
  }
}



