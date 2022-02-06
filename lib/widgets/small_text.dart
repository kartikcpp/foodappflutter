import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText(
      {Key? key,
      this.color = Colors.black,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 12,this.height=1.2})
      : super(key: key);
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  double height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400),
    );
  }
}
