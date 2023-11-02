import 'package:demo/common_widgets/bottom_nav_bar.dart';
import 'package:demo/common_widgets/story_grid_item.dart';
import 'package:demo/constants/icon_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StoryGridItem(imageName: IconsConstants.search, label: "Search")
        ),
      ),
      bottomNavigationBar: const BotNavBar()
    );
  }
}

