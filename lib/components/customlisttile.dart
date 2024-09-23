import 'package:flutter/material.dart';
import 'package:focal_project_1/components/colors.dart';
import 'package:focal_project_1/components/icons.dart';
import 'package:focal_project_1/components/images.dart';

class CustomListTile extends StatefulWidget {
  final String mainText, secondText;
  final double followerNumber, views, reads;
  const CustomListTile(
      {super.key,
      required this.mainText,
      required this.secondText,
      required this.followerNumber,
      required this.views,
      required this.reads});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Column(children: [
      ListTile(
          leading: logo,
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Text('${widget.secondText} |   ',
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w700)),
              const Icon(personPinRounded, size: 16),
              Text(' ${widget.followerNumber.toInt()}K   ',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 12)),
              const Icon(visibilityOutlined, size: 16),
              Text(' ${widget.views}K   ',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 12)),
              const Icon(menuBook, size: 16),
              Text(' ${widget.reads.toInt()}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 12))
            ]),
            SizedBox(height: screenheight * 0.01),
            Text(widget.mainText,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16))
          ]),
          trailing: MaterialButton(
              minWidth: screenWidth * 0.16,
              height: screenheight * 0.044,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              onPressed: () {},
              color: fontColor,
              textColor: backgroundCardColor,
              child: const Text('متابعة'))),
      SizedBox(height: screenheight * 0.009)
    ]);
  }
}
