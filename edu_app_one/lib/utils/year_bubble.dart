import 'package:flutter/material.dart';

class YearBubble extends StatelessWidget {
  var year;
  YearBubble(this.year);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
      alignment: Alignment.center,
      child: Text(
        year,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
