import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';
import 'package:health_ui/views/home/category_list.dart';
import 'package:health_ui/views/home/category_text.dart';
import 'package:health_ui/views/home/image_slider.dart';
import 'package:health_ui/views/home/need_help_text.dart';
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
              const CategoryList(
                contHeight: 103,
                contWidth: 360,
                marginBottom: 8,
                marginTop: 8,
                sizeBoxWidth: 360,
                imageHeight: 84,
                txtMarginTop: 3,
                txtSize: 14,
              ),
              const NeedHelpText(),
              const CategoryText(
                topHeight: 12,
              ),
              const CategoryList(
                  contHeight: 200,
                  contWidth: 335,
                  marginTop: 6,
                  marginBottom: 8,
                  sizeBoxWidth: 335,
                  imageHeight: 160,
                  txtMarginTop: 4,
                  txtSize: 16),
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
