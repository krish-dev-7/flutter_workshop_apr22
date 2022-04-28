import 'package:flutter/material.dart';

import '../foodDescription.dart';

class Header extends StatefulWidget {
  const Header({Key? key,
    this.offer="50%",
    this.description="Offer is only today, So place your order right now",
    this.asset = "assets/burger1.png"}) : super(key: key);
  final String offer;
  final String description;
  final String asset;
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height/3,
      width:width/1.2,
      decoration: BoxDecoration(
        color: const Color(0xfff97316),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.offer, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  Flexible(child: Text(widget.description, style: const TextStyle(color: Colors.white, fontSize: 20),)),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FoodDescription()));
                    },
                    child: Container(
                      height: 30,
                      width: width/3,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(child: Text("Order Now", style: TextStyle(color: Colors.white, fontSize: 20),)),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Flexible(child: Image.asset(widget.asset, height: 200,width: 200,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
