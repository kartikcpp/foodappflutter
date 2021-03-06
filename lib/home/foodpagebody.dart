import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
        child: PageView.builder(
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },

            )
            );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: index%2==0?Colors.amber:Colors.greenAccent),
    );
  }
}
