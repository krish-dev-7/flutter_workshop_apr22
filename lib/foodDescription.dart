import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_workshop_apr22/HomePage.dart';
import 'package:flutter_workshop_apr22/widgets/appBar.dart';

class FoodDescription extends StatefulWidget {
  const FoodDescription({Key? key, this.assets="assets/burger1.png", this.title="Chicken Burger - special", this.description="Sample description to order new food, here it is chicken burger - special"}) : super(key: key);
  final String assets;
  final String title;
  final String description;

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  [
            const MyAppBar(back: HomePage(),),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items: [
                  Container(height: 500, width: 400, color: Colors.white,child: Image.asset("assets/burger1.png", height: 400,width: 300,)),
                  Container(height: 500, width: 400, color: Colors.white,child: Image.asset("assets/burger1.png", height: 400,width: 300,)),
                  Container(height: 500, width: 400, color: Colors.white,child: Image.asset("assets/burger1.png", height: 400,width: 300,)),
                  Container(height: 500, width: 400, color: Colors.white,child: Image.asset("assets/burger1.png", height: 400,width: 300,)),

                  ], options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: const [Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Popular Items", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              )]),
            ),

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 18, color: Color(0xff232323)),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: const [
                Text("\$10", style: TextStyle(fontWeight: FontWeight.bold,),),
                SizedBox(width: 10,),
                Text("\$5", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xfff97316)),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: const [
                CircleAvatar(child: Icon(Icons.add, color: Colors.white, size: 30,),backgroundColor: Colors.black,),
                SizedBox(width: 20,),
                Text("2", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                CircleAvatar(child: Icon(Icons.minimize, color: Colors.white, size: 30,),backgroundColor: Colors.black,),
              ],
            ),
            const SizedBox(height: 20,),
      RatingBar(
        initialRating: 3,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemCount: 5,
        ratingWidget: RatingWidget(
          full: const Icon(Icons.star, color: Color(0xfff97316),),
          empty: const Icon(Icons.star, color: Color(0xffd2d2d2),),
          half: const Icon(Icons.star, color: Color(0xfff97316),),
        ),
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
            const SizedBox(height: 30,),
            Container(
              height: 30,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xfff97316),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(child: Text("Place Order", style: TextStyle(color: Colors.white,),)),
            ),
          ],
        ),
      ),
    );
  }
}
