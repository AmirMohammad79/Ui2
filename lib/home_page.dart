import 'package:flutter/material.dart';
import 'Model/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "images/menu1.png",
                      height: 25,
                    ),
                    const Spacer(),
                    Image.asset(
                      "images/search.png",
                      height: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "images/shopping bag.png",
                      height: 25,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(22.0),
                child: Row(
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 733, // this app are from hit and trial
                child: GridView.builder(
                    itemCount: userItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.61,
                    ),
                    itemBuilder: (context, index) {
                      final stojo = userItems[index];
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DetailStojo(stojo: stojo),
                          //   ),
                          // );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Hero(
                                tag: stojo.color,
                                child: Container(
                                  height: 273,
                                  decoration: BoxDecoration(
                                      color: stojo.color,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Stack(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 65,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25, left: 12),
                                          child: Image.asset(
                                            stojo.image,
                                            height: 180,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 2),
                              child: Text(
                                stojo.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 2),
                              child: Text(
                                "\$${stojo.price}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          )),
    );
  }
}