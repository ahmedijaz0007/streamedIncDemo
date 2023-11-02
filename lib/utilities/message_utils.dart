import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/icon_constants.dart';

abstract class Utils {
  static Widget getIcon(String imgName,{double? height,double? width}) {
    try {
      if (imgName.contains(IconsConstants.svgExt)) {
        return SvgPicture.asset(
          IconsConstants.svgFolderPath + imgName,
          height: height,
          width: width,
          fit: BoxFit.scaleDown,
        );
      } else if (imgName.contains(IconsConstants.pngExt)) {
        return Image.asset(
          IconsConstants.pngFolderPath + imgName,
          height: height,
          width: width,
          fit: BoxFit.scaleDown,
        );
      }
    } catch (_) {
      return SvgPicture.asset(
          IconsConstants.svgFolderPath + IconsConstants.icPlaceHolder,     height: height,
        width: width,);
    }
    return SvgPicture.asset(
        IconsConstants.svgFolderPath + IconsConstants.icPlaceHolder,     height: height,
      width: width,);
  }

  static String getImageWithPath(String imageName) {
    return IconsConstants.pngFolderPath + imageName;
  }
}