import 'package:flutter/material.dart';

class SnacksListView extends StatefulWidget {
  const SnacksListView({Key? key}) : super(key: key);

  @override
  State<SnacksListView> createState() => _SnacksListViewState();
}

class _SnacksListViewState extends State<SnacksListView> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final name = args["name"];
    final image = args["image"];
    final price = args["price"];
    //final weigth = args["weigth"];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                image,
                fit: BoxFit.fill,
                height: 250,
                width: MediaQuery.of(context).size.width * 0.99,
              ),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.teal,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "ADD",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Text(weigth),
              Text(" Rs $price",
                  style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 15,
                      fontWeight: FontWeight.w600)),
              const Divider(
                thickness: 3,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Important Information",

                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "the product Image shown are for representation purpose only .the actual product may vary.it is recommended to read the product label batch details,direction for use ,etc as contained in the actual product before consuming and utilize the product",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

