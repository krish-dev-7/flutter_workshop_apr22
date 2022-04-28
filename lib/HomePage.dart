import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop_apr22/widgets/appBar.dart';
import 'package:flutter_workshop_apr22/widgets/foodCard.dart';
import 'package:flutter_workshop_apr22/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffececec),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            const MyAppBar(back: HomePage(),),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items:const [
                    Header(),
                    Header(),
                    Header(),
                    Header()
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
            const SizedBox(height: 60,),
            Column(
              children: [
                Row(children: const [Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Popular Items", style: TextStyle(fontWeight: FontWeight.bold,)),
                )]),
                const SizedBox(height: 20,),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                    itemBuilder: (context, index){
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FoodCard(),
                      );
                    }),
              ],
            )


          ],
        ),
      ),
    );
  }
}
