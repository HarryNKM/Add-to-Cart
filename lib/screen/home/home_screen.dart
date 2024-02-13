import 'package:Add_Cart_App/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cart');
              },
              child: const Icon(Icons.card_travel_outlined),
            ),
            const Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Toys",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Collection",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: productkist
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'product',
                                arguments: e);
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 140,
                            width: 380,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Image.asset(
                                  e['image'],
                                  height: 80,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        e['name'],
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$ ${e['price']}",
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                const Icon(Icons.favorite),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
