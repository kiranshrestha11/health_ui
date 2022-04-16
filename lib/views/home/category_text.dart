import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';

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
