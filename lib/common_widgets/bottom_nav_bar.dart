


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/icon_constants.dart';
import '../utilities/message_utils.dart';

class BotNavBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BotNavBarState();

}

class BotNavBarState extends State<BotNavBar>{
  var currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: primaryColor,
      indicatorColor: Colors.transparent,
      selectedIndex: currentPageIndex,
      onDestinationSelected: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      destinations: [
        NavigationDestination(
          selectedIcon: GradientIcon(
            imageName: IconsConstants.home,
          ),
          icon: const Icon(
            Icons.home_filled,
            color: unSelectedIconColor,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: GradientIcon(
            imageName: IconsConstants.search,
          ),
          icon: Utils.getIcon(IconsConstants.search),
          label: 'Discover',
        ),
        const NavigationDestination(
          selectedIcon: CenterIcon(),
          icon: CenterIcon(),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: GradientIcon(
            imageName: IconsConstants.deal,
          ),
          icon: Utils.getIcon(IconsConstants.deal),
          label: 'Deals',
        ),
        NavigationDestination(
          selectedIcon: GradientIcon(
            imageName: IconsConstants.profile,
          ),
          icon: Utils.getIcon(IconsConstants.profile),
          label: 'Profile',
        ),
      ],
    );
  }

}


class CenterIcon extends StatelessWidget {
  const CenterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [blueGradientEnd, blueGradientStart],
          )),
      child: Center(child: Utils.getIcon(IconsConstants.add)),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final String imageName;
  final double? width;
  final double? height;
  const GradientIcon({
    super.key,
    required this.imageName,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [blueGradientStart, blueGradientEnd],
          ).createShader(bounds);
        },
        child: Utils.getIcon(imageName, height: height, width: width));
  }
}
