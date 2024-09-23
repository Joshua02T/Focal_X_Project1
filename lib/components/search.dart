import 'package:flutter/material.dart';
import 'package:focal_project_1/components/customcard.dart';
import 'package:focal_project_1/components/icons.dart';
import 'package:focal_project_1/components/lists.dart';

class CustomSearch extends SearchDelegate {
  List? filterCardItems;
  Map? selectedCard;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: closeIcon)
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(arrowBack));
  }

  @override
  Widget buildResults(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    if (selectedCard != null) {
      return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
              width: screenWidth * 0.46,
              height: screenheight * 0.29,
              child: CustomCard(
                  image: selectedCard!["image"],
                  followerNumber: selectedCard!["followerNumber"],
                  views: selectedCard!["views"],
                  reads: selectedCard!["reads"],
                  mainText: selectedCard!["mainText"],
                  secondText: selectedCard!["secondText"])));
    } else {
      return Container();
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (query.isEmpty) {
      return Directionality(
          textDirection: TextDirection.rtl,
          child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      selectedCard = cardItems[index];
                      showResults(context);
                    },
                    child: Card(
                        child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.03),
                            child: Text("${cardItems[index]["mainText"]}",
                                style: const TextStyle(fontSize: 15)))));
              },
              itemCount: cardItems.length));
    } else {
      filterCardItems = cardItems
          .where((element) => element["mainText"].contains(query))
          .toList();
      return Directionality(
          textDirection: TextDirection.rtl,
          child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    selectedCard = filterCardItems![index];
                    showResults(context);
                  },
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.03),
                          child: Text("${filterCardItems![index]["mainText"]}",
                              style: const TextStyle(fontSize: 15)))),
                );
              },
              itemCount: filterCardItems!.length));
    }
  }
}
