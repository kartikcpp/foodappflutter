import 'package:flutter/material.dart';
import 'package:foodapp/home/foodpagebody.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:45,bottom: 15),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [BigText(size: 30,text: 'india',color: Colors.amber,), Row(children: [SmallText(text: 'India',),Icon(Icons.arrow_drop_down_rounded)],)],
                  ),
                  Container(
                    child: Icon(Icons.search,color: Colors.white,),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amberAccent),
                  )
                ]),
          ),
         
          FoodPageBody(),

        
        
        ],
      ),
    );
  }
}
