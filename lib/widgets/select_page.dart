import 'package:flutter/material.dart';

class SelectPage extends StatelessWidget {
  SelectPage(
      {required bool selected,  double horizontalMargin=0, Key? key})
      : _selected = selected,
        _horizontalMargin = horizontalMargin,
        super(key: key);

  final bool _selected;
  final double _horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 19,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: _horizontalMargin),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(Radius.circular(2)),
        borderRadius: BorderRadius.circular(2),
        color: _selected ? Color(0xFF6A90F2) : Color(0xFFDDDDDD),
      ),
    );
  }
}





