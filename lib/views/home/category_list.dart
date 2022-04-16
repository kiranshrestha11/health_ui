import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';
import 'package:health_ui/data/image_list.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.contHeight,
    required this.contWidth,
    required this.marginTop,
    required this.marginBottom,
    required this.sizeBoxWidth,
    required this.imageHeight,
    required this.txtMarginTop,
    required this.txtSize,
    required this.alignment,
  }) : super(key: key);

  final double contHeight,
      contWidth,
      marginTop,
      marginBottom,
      sizeBoxWidth,
      imageHeight,
      txtMarginTop,
      txtSize;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: contHeight,
      width: contWidth,
      margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
      child: Row(
        children: [
          SizedBox(
            width: sizeBoxWidth,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: alignment,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 14),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                imageList[index],
                                height: imageHeight,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: txtMarginTop),
                          child: Text(
                            nameList[index],
                            style: TextStyle(
                                color: textColor,
                                fontSize: txtSize,
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
