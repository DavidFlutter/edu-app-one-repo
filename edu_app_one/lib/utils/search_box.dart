import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 0,
      ),
      constraints: BoxConstraints(maxWidth: 400),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search tutorials",
          border: InputBorder.none,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}
