import 'package:demo/common_widgets/bottom_nav_bar.dart';
import 'package:demo/common_widgets/story_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
    return  Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column( mainAxisSize: MainAxisSize.min,children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 30),
                child: SizedBox(
                  height: 80.0,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: gridItems.length,
                    itemBuilder: (BuildContext context, int index) =>Padding(
                      padding: const EdgeInsets.only(left: 2.5,right: 2.5),
                      child: StoryListItem(
                          imageName: gridItems[index][1],
                          label: gridItems[index][0]),
                    ),
                  ),
                    ),
              ),
                ],),
              ),

            ),

        bottomNavigationBar: const BotNavBar());
  }
}


