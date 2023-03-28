import 'package:flutter/material.dart';

import '../my_class/my_routes.dart';
import '../my_class/products_list.dart';
import '../typeahead_screen.dart';
import 'category_screen.dart';

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.green[900],
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_pin,
                          size: 22,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "HOME",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.white,
                          size: 18,
                        ), Spacer(), Icon(
                          Icons.personal_injury_outlined,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Dunzo Daily",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),Spacer(),   Column(
                          children: [
                            const Text(
                              "instant",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.greenAccent),
                            ),Row(
                              children: const [
                                Icon(Icons.electric_bolt,size: 17,color: Colors.white,),
                                Text(
                                  "21 MINS",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      " Groceries deliverd fresh and fast",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TypeAheadScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 15),
                                child: Icon(Icons.search),
                              ),
                              SizedBox(
                                height: 50,
                                width: 300,
                                child: TextField(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TypeAheadScreen()));

                                  },
                                  enabled: false,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search for an item in Dunzo Daily",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 8),
              child: Container(
                color: Colors.pinkAccent.shade100,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child:Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(15)
                    ),
                      child: Center(child: Text("Get Free Delivery on All Orders",style: TextStyle(fontSize: 14,color: Colors.red[900],fontWeight: FontWeight.w600),)),
                      height: 40,
                      width: 350),

                ) ,

              ),
            ),
            Divider(thickness: 7),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Most Popular",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                      Spacer(),
                      Text("View All",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 14),)
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(mostPopular.length, (index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed(MyRoutes.popularViewScreenRoutes,arguments: {
                                  "name":mostPopular[index].name ,
                                "image":mostPopular[index].image ,
                                "price":mostPopular[index].price ,
                                "weight":mostPopular[index].weight ,
                                });
                              },
                              child: Container(
                               // height: 150,
                                 //width: 150,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(mostPopular[index].image,fit: BoxFit.fill,height: 70,width: 110,),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(mostPopular[index].name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500))),
                                    Text(mostPopular[index].weight,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54)),
                                    Text(" Rs ${mostPopular[index].price}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),

                              ),
                            ),
                          );
                        } ,
                        )
                    ),
                  ) ,
                  Divider(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Shop By Category",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                  CategoryScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
