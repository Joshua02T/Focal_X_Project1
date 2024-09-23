import 'package:flutter/material.dart';
import 'package:focal_project_1/components/colors.dart';
import 'package:focal_project_1/components/icons.dart';

class CustomCard extends StatefulWidget {
  final String image, mainText, secondText;
  final double followerNumber, views, reads;

  const CustomCard(
      {super.key,
      required this.image,
      required this.followerNumber,
      required this.views,
      required this.reads,
      required this.mainText,
      required this.secondText});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Card(
        color: backgroundCardColor,
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: fontNoneActive, width: 0.5),
            borderRadius: BorderRadius.circular(4)),
        child: Column(children: [
          Image.asset(widget.image),
          SizedBox(height: screenheight * 0.01),
          Row(children: [
            Text(
              '${widget.secondText} |   ',
              style: const TextStyle(
                fontSize: 10,
                color: seconderyFontColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Icon(
              personPinRounded,
              size: 16,
            ),
            Text(
              '${widget.followerNumber.toInt()}K   ',
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w700, color: fontColor),
            ),
            Row(children: [
              const Icon(visibilityOutlined, size: 16),
              Text(
                '${widget.views}K   ',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: fontColor),
              )
            ]),
            Row(children: [
              const Icon(
                menuBook,
                size: 16,
              ),
              Text('${widget.reads.toInt()}',
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: fontColor))
            ])
          ]),
          const SizedBox(height: 5),
          Text(widget.mainText,
              style: const TextStyle(
                  fontSize: 12,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                  color: fontColor)),
          MaterialButton(
              minWidth: screenWidth * 0.38,
              color: fontColor,
              textColor: backgroundCardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              onPressed: () {},
              child: const Text('متابعة'))
        ]));
  }
}
