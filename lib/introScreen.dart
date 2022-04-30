import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_workshop_apr22/widgets/appBar.dart';

import 'HomePage.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height/2,
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/buisenessWoman.png"))
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("#1", style: TextStyle(fontSize: 30, color: Color(0xfff67200), fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("World's Best Food\n Ordering app", style: TextStyle(fontSize: 30, color: Color(
                        0xff000000), fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("We are awarded with best food\n ordering worldwide", style: TextStyle(fontSize: 20, color: Color(
                        0xFF3E3E3E),),),
                  ],
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Container(
                    width: width,
                    height: height/20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Color(0xfff97316), Color(
                          0x80f97316)]),
                    ),
                    child: const Center(child: Text("Get Started Now", style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
