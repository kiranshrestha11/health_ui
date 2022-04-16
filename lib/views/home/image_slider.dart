import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 335,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://i.pinimg.com/736x/f1/b1/d7/f1b1d743d075dceb18af91f5c70d8ac2.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
