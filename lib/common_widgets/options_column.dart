


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/message_utils.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Utils.getIcon("offer.svg"),
       const SizedBox(
         height: 8,
       ),
       Text(
         "offer",
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.bodyMedium,
       ),
       const SizedBox(
         height: 8,
       ),
       Utils.getIcon("like.svg"),
       const SizedBox(
         height: 8,
       ),
       Text(
         "4.5k",
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.bodyMedium,
       ),
       const SizedBox(
         height: 8,
       ),
       Utils.getIcon("comments.svg"),
       const SizedBox(
         height: 8,
       ),
       Text(
         "12.5k",
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.bodyMedium,
       ),
       const SizedBox(
         height: 8,
       ),
       Utils.getIcon("share.svg"),
       const SizedBox(
         height: 8,
       ),
       Text(
         "77",
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.bodyMedium,
       ),
       const SizedBox(
         height: 8,
       ),Utils.getIcon("profile_pic.png"),
       const SizedBox(
         height: 8,
       ),
     ],
   );
  }
}
