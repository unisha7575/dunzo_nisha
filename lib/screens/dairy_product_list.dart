import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../my_class/my_routes.dart';
import '../my_class/product_class.dart';
import '../my_class/products_list.dart';

class DairyProductList extends StatefulWidget {
  const DairyProductList({Key? key}) : super(key: key);

  @override
  State<DairyProductList> createState() => _DairyProductListState();
}

class _DairyProductListState extends State<DairyProductList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          // title: Column(
          //   children: [
          //     Row(
          //       children: const [
          //        // Text("Fresh Fruits"),
          //         Icon(Icons.arrow_back),
          //         Spacer(),
          //         Icon(Icons.search),
          //       ],
          //     ),Column(
          //       children: [
          //         Row(
          //           children: const [
          //            // Text("Fresh Fruits"),
          //            Text("Fruits"),
          //             Icon(Icons.expand_more),
          //           ],
          //         ), Row(
          //           children: const [
          //            // Text("Fresh Fruits"),
          //            Text("Express Mart"),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ],
          // ),

          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            size: 25,
                          ),
                          Spacer(),
                          Opacity(
                              opacity: 0.6,
                              child: Icon(Icons.search, size: 35)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 10),
                        child: Row(
                          children: [
                            Image.network("https://media.istockphoto.com/id/544807136/photo/various-fresh-dairy-products.jpg?s=612x612&w=is&k=20&c=E-B25v0R0RLlTbzM98qkLb0-KdjqbFO7Wp60fgQW97w=",
                              fit: BoxFit.fill,
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Dairy Product",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Opacity(
                                        opacity: 1,
                                        child: Icon(
                                          Icons.expand_more,
                                          color: Colors.green,
                                          size: 32,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  "Xpress Mart",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Expanded(
                child: ListView(children: [
                  CarouselSlider(
                    options: CarouselOptions(height: 90),
                    items: [
                      "Up to 50% off on select products!",
                      "Up to 50% off on select products!",
                      "Up to 50% off on select products!",
                      "Up to 50% off on select products!",
                      "Up to 50% off on select products!"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            decoration:
                            BoxDecoration(color: Colors.blueGrey[50]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 17, bottom: 17, left: 12),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: MediaQuery.of(context).size.width,
                                  // margin: EdgeInsets.symmetric(horizontal: 5.0),

                                  child: Center(
                                      child: Row(
                                        children: [
                                          Image.network(
                                            "https://cdn-icons-png.flaticon.com/512/5937/5937567.png",
                                            height: 25,
                                            width: 42,
                                          ),
                                          Text(
                                            i,
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ))),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      // topLeft: Radius.circular(10.0),
                      // topRight: Radius.circular(20.0),
                      // bottomRight: Radius.circular(30.0),
                      // bottomLeft: Radius.circular(40.0),

                      child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            "https://storage.sg.content-cdn.io/in-resources/8845e144-8902-4204-b80f-9dc7dc2f4bcb/Images/userimages/Buy%20more%20Save%20more%20S%206%20Oct%202020.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Column(
                    children: List.generate(dairyProduct.length, (index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(MyRoutes. dairyProduct,arguments: {
                            "name":dairyProduct[index].name ,
                            "image":dairyProduct[index].image ,
                            "price":dairyProduct[index].price ,
                            "weight":dairyProduct[index].weight ,
                          });
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Row(
                                children: [
                                  Container(
                                      color: Colors.white,
                                      height: 80,
                                      width: 100,
                                      child: Image.network(
                                        dairyProduct[index].image,
                                        fit: BoxFit.fill,
                                        height: 80,
                                        width: 100,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          dairyProduct[index].name,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 9,
                                        ),
                                        Text(
                                          dairyProduct[index].weight,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.black54),
                                        ),
                                        const SizedBox(
                                          height: 9,
                                        ),
                                        Text(
                                          "Rs${dairyProduct[index].price}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          height: 9,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "save Rs 10",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.purple[800]),
                                            ),
                                            const SizedBox(
                                              width: 70,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.black12)),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
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
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Divider(
                                  //   thickness: 20,
                                  //   color: Colors.red,
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  )
                ]),
              ),
            ],
          )),
    );
  }
}
