import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, required this.back}) : super(key: key);
  final Widget back;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => back));
                  },
                    child: Image.asset("assets/chevron-left.png",height: 20,width: 20,),
                ),

                Row(
                  children: [
                    Image.asset("assets/shopping-cart.png", height: 20,width: 20,),
                    const SizedBox(width: 10,),
                    Image.asset("assets/search.png",height: 20,width: 20,)
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}
