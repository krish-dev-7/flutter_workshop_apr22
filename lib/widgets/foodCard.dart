import 'package:flutter/material.dart';
import 'package:flutter_workshop_apr22/foodDescription.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key, this.assets="assets/burger1.png", this.title="Chicken Burger - special", this.description="Sample description to order new food, here it is chicken burger - special"}) : super(key: key);
  final String assets;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: width/3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(
          blurRadius: 2,
          offset: Offset(-0.5,1)
        )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(assets, height: 70,width: 70,),
            const SizedBox(height: 20,),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Flexible(child: Text(description, style:const TextStyle(fontWeight: FontWeight.bold),)),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodDescription()));
              },
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Color(0xfff97316), Color(
                      0x80f97316)]),
                  borderRadius: BorderRadius.circular(20)
              ),
                child: const Center(child: Text("Order Now", style: TextStyle(color: Colors.white,),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
