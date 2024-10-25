import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset('images/menu1.png' , height: 25,),
                const Spacer(),
                Image.asset('images/search.png' , height: 25,),
                const SizedBox(width: 15,),
                Image.asset('images/shopping bag.png' , height: 25,),
              ],
            ),
          )
        ],),
      ),
    );
  }
}
