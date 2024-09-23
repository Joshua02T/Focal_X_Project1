import 'package:flutter/material.dart';
import 'package:focal_project_1/components/colors.dart';
import 'package:focal_project_1/components/customcard.dart';
import 'package:focal_project_1/components/icons.dart';
import 'package:focal_project_1/components/lists.dart';
import 'package:focal_project_1/components/search.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  bool hasUserExperienceCategory = userExperienceCards
      .any((card) => card["categoryText"] == "تجربة المستخدم");
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Container(
                color: backgroundColor,
                child: ListView(children: [
                  Padding(
                      padding: EdgeInsets.only(
                          right: screenWidth * 0.01, top: screenheight * 0.03),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(arrowBack,
                                            size: 30, color: fontColor)),
                                    const Text('الاكثر متابعة',
                                        style: TextStyle(
                                            color: fontColor,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  PopupMenuButton(itemBuilder: (context) => [])
                                ]),
                            SizedBox(height: screenheight * 0.025),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showSearch(
                                            context: context,
                                            delegate: CustomSearch());
                                      },
                                      child: Container(
                                          width: screenWidth * 0.8,
                                          height: screenheight * 0.045,
                                          decoration: const BoxDecoration(
                                              border:
                                                  Border(bottom: BorderSide())),
                                          child: Row(children: [
                                            searchIcon,
                                            SizedBox(width: screenWidth * 0.02),
                                            const Text('ابحث ضمن "الصفحة"',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: fontNoneActive))
                                          ]))),
                                  Container(
                                      width: screenWidth * 0.1,
                                      height: screenheight * 0.051,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: IconButton(
                                          onPressed: () {}, icon: tuneRounded))
                                ]),
                            SizedBox(height: screenheight * 0.03),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: indicatorColor,
                                                  width:
                                                      screenheight * 0.0024))),
                                      child: Text(categories[0],
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700))),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text('المزيد',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: seconderyFontColor)))
                                ]),
                            SizedBox(height: screenheight * 0.03),
                            SizedBox(
                                height: screenheight * 0.29,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => CustomCard(
                                        image: designCards[index]["image"],
                                        followerNumber: designCards[index]
                                            ["followerNumber"],
                                        views: designCards[index]["views"],
                                        reads: designCards[index]["reads"],
                                        mainText: designCards[index]
                                            ["mainText"],
                                        secondText: cardItems[index]
                                            ["secondText"]),
                                    itemCount: designCards.length,
                                    scrollDirection: Axis.horizontal)),
                            SizedBox(height: screenheight * 0.03),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: indicatorColor,
                                                  width: 2))),
                                      child: Text(categories[1],
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700))),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text('المزيد',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: seconderyFontColor)))
                                ]),
                            SizedBox(height: screenheight * 0.03),
                            SizedBox(
                                height: screenheight * 0.29,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => CustomCard(
                                        image: montageCards[index]["image"],
                                        followerNumber: montageCards[index]
                                            ["followerNumber"],
                                        views: montageCards[index]["views"],
                                        reads: montageCards[index]["reads"],
                                        mainText: montageCards[index]
                                            ["mainText"],
                                        secondText: montageCards[index]
                                            ["secondText"]),
                                    itemCount: montageCards.length,
                                    scrollDirection: Axis.horizontal)),
                            SizedBox(height: screenheight * 0.03),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: indicatorColor,
                                                  width: 2))),
                                      child: Text(categories[2],
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700))),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text('المزيد',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: seconderyFontColor)))
                                ]),
                            SizedBox(height: screenheight * 0.03),
                            SizedBox(
                                height: screenheight * 0.29,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => CustomCard(
                                          image: userExperienceCards[index]
                                              ["image"],
                                          followerNumber:
                                              userExperienceCards[index]
                                                  ["followerNumber"],
                                          views: userExperienceCards[index]
                                              ["views"],
                                          reads: userExperienceCards[index]
                                              ["reads"],
                                          mainText: userExperienceCards[index]
                                              ["mainText"],
                                          secondText: userExperienceCards[index]
                                              ["secondText"],
                                        ),
                                    itemCount: userExperienceCards.length,
                                    scrollDirection: Axis.horizontal))
                          ]))
                ]))));
  }
}
