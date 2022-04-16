import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 1.4)),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "SEARCH",
                hintStyle: TextStyle(fontWeight: FontWeight.w400, height: 1.4),
              ),
            ),
          ),
          const Icon(
            Icons.search,
            color: searchIconColor,
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
