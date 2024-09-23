import 'package:flutter/material.dart';
import 'package:focal_project_1/components/colors.dart';
import 'package:focal_project_1/components/customcard.dart';
import 'package:focal_project_1/components/customlisttile.dart';
import 'package:focal_project_1/components/icons.dart';
import 'package:focal_project_1/components/lists.dart';
import 'package:focal_project_1/components/search.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
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
                                        onPressed: () {},
                                        icon: const Icon(arrowBack,
                                            size: 30, color: fontColor)),
                                    const Text('المجموعات',
                                        style: TextStyle(
                                            color: fontColor,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  PopupMenuButton(itemBuilder: (context) => [])
                                ]),
                            SizedBox(height: screenheight * 0.03),
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
                                            SizedBox(width: screenWidth * 0.01),
                                            const Text('ابحث ضمن "الصفحة"',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: fontNoneActive))
                                          ]))),
                                  Container(
                                      width: screenWidth * 0.1,
                                      height: screenheight * 0.05,
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
                                  const Text('الاكثر متابعة',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700)),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, 'mostpopular');
                                      },
                                      child: const Text('المزيد',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: seconderyFontColor)))
                                ]),
                            SizedBox(
                                height: screenheight * 0.29,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => CustomCard(
                                        image: cardItems[index]["image"],
                                        followerNumber: cardItems[index]
                                            ["followerNumber"],
                                        views: cardItems[index]["views"],
                                        reads: cardItems[index]["reads"],
                                        mainText: cardItems[index]["mainText"],
                                        secondText: cardItems[index]
                                            ["secondText"]),
                                    itemCount: cardItems.length,
                                    scrollDirection: Axis.horizontal)),
                            SizedBox(height: screenheight * 0.005),
                            DefaultTabController(
                                length: 5,
                                child: Column(children: [
                                  TabBar(
                                      indicatorColor: indicatorColor,
                                      indicatorWeight: 2,
                                      dividerColor: backgroundColor,
                                      unselectedLabelStyle: const TextStyle(
                                          fontSize: 16, fontFamily: 'Tajawal'),
                                      unselectedLabelColor: fontNoneActive,
                                      labelColor: fontColor,
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Tajawal"),
                                      labelPadding: EdgeInsets.symmetric(
                                          vertical: screenheight * 0.001),
                                      tabs: const [
                                        Tab(text: 'تصميم'),
                                        Tab(text: 'مونتاج'),
                                        Tab(text: 'تحليل'),
                                        Tab(text: 'ادارة اعمال'),
                                        Tab(text: 'الخط')
                                      ]),
                                  SizedBox(height: screenheight * 0.01),
                                  SizedBox(
                                      height: screenheight * 0.35,
                                      child: TabBarView(children: [
                                        ListView.builder(
                                            itemCount:
                                                designListTileItem.length,
                                            itemBuilder: (context, index) =>
                                                CustomListTile(
                                                    mainText:
                                                        designListTileItem[index]
                                                            ['mainText'],
                                                    secondText:
                                                        designListTileItem[index]
                                                            ['secondText'],
                                                    followerNumber:
                                                        designListTileItem[index]
                                                            ['followerNumber'],
                                                    views: designListTileItem[
                                                        index]['views'],
                                                    reads:
                                                        designListTileItem[index]
                                                            ['reads'])),
                                        ListView.builder(
                                            itemCount:
                                                montageListTileItem.length,
                                            itemBuilder: (context, index) =>
                                                CustomListTile(
                                                    mainText:
                                                        montageListTileItem[index]
                                                            ['mainText'],
                                                    secondText:
                                                        montageListTileItem[index]
                                                            ['secondText'],
                                                    followerNumber:
                                                        montageListTileItem[index]
                                                            ['followerNumber'],
                                                    views: montageListTileItem[
                                                        index]['views'],
                                                    reads:
                                                        montageListTileItem[index]
                                                            ['reads'])),
                                        Container(),
                                        Container(),
                                        Container()
                                      ]))
                                ]))
                          ]))
                ]))));
  }
}
