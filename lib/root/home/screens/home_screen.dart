import 'package:demo/common_widgets/bottom_nav_bar.dart';
import 'package:demo/common_widgets/options_column.dart';
import 'package:demo/common_widgets/story_list_item.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/page_widget.dart';
import '../../../utilities/message_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final controller = PageController();
  var gridItems = [
    ["Add Listening", "add_white.svg"],
    ["Search", "search_white.svg"],
    ["Notification", "notification.svg"],
    ["Electronics", "electronics.png"],
    ["Appliances", "appliances.png"],
    ["Mobile", "mobile.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
            children:[PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: [
                PageWidget(gridItems: gridItems,imageName: "Image1.png",),
                PageWidget(gridItems: gridItems,imageName: "image2.png",),
                PageWidget(gridItems: gridItems,imageName: "image3.png",),
              ],
            ),
              PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  PageWidget(gridItems: gridItems,imageName: "Image1.png",),
                  PageWidget(gridItems: gridItems,imageName: "image2.png",),
                  PageWidget(gridItems: gridItems,imageName: "image3.png",),
                ],
              ),
              PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  PageWidget(gridItems: gridItems,imageName: "Image1.png",),
                  PageWidget(gridItems: gridItems,imageName: "image2.png",),
                  PageWidget(gridItems: gridItems,imageName: "image3.png",),
                ],
              ),]
            ),
          ),
        bottomNavigationBar: const BotNavBar(),
    );
  }
}
