import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';
import 'package:health_ui/data/image_list.dart';
import 'package:health_ui/views/home/image_slider.dart';
import 'package:health_ui/views/home/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: appBarColor,
          leading: const Icon(Icons.arrow_back_ios_new),
          title: const Text(
            "Doctors",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          actions: const [Icon(Icons.filter_list)]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchBar(),
              const ImageSlider(),
              const CategoryText(
                topHeight: 10,
              ),
              const CategoryList(),
              const NeedHelpText(),
              const CategoryText(
                topHeight: 12,
              ),
              Container(
                height: 200,
                margin: const EdgeInsets.only(top: 6, bottom: 8),
                width: 335,
                child: Row(
                  children: [
                    SizedBox(
                      width: 335,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imageList.length,
                          itemBuilder: (context, index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 14),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.network(
                                          imageList[index],
                                          height: 160,
                                        )),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      nameList[index],
                                      style: const TextStyle(
                                          color: textColor,
                                          fontSize: 16,
                                          decoration: TextDecoration.underline),
                                    ),
                                  )
                                ],
                              )),
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NeedHelpText extends StatelessWidget {
  const NeedHelpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Needed help with Doctor and Info?",
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.phone_callback,
              color: redColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Call us Now",
              style: TextStyle(
                  color: redColor,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      //color: Colors.blue,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      width: 360,
      child: Row(
        children: [
          SizedBox(
            width: 360,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 14),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                imageList[index],
                                height: 84,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          child: Text(
                            nameList[index],
                            style: const TextStyle(
                                color: textColor,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )),
          )
        ],
      ),
    );
  }
}

class CategoryText extends StatelessWidget {
  const CategoryText({
    Key? key,
    required this.topHeight,
  }) : super(key: key);
  final double topHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topHeight),
      width: 335,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Categories",
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text("View All",
              style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                  decoration: TextDecoration.underline))
        ],
      ),
    );
  }
}
