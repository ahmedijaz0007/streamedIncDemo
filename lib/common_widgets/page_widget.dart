
import 'package:demo/common_widgets/details_widget.dart';
import 'package:demo/common_widgets/story_list_item.dart';
import 'package:flutter/cupertino.dart';

import '../utilities/message_utils.dart';
import 'options_column.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.gridItems, required this.imageName,
  });

  final List<List<String>> gridItems;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration:   BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Utils.getImageWithPath(imageName)),
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: SizedBox(
                height: 80.0,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: gridItems.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(left: 2.5, right: 2.5),
                    child: StoryListItem(
                        imageName: gridItems[index][1],
                        label: gridItems[index][0]),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 212,),
            const Row(children: [
              Flexible(
                  flex: 3,
                  child: DetailsWidget()),
                SizedBox(width: 24,),
                Flexible(
                    flex: 1,
                    child: OptionsList())])
          ],
        ),
      ),
    );
  }
}
