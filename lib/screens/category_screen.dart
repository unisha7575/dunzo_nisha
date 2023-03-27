import 'package:flutter/material.dart';

import '../my_class/my_routes.dart';
import '../my_class/products_list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {

    return GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: List.generate(category .length, (index) {
        return GestureDetector(
          onTap: (){
            if(index==0){
              Navigator.of(context).pushNamed(MyRoutes.vegetableListViewScreen);
            }
          else if(index==1){
              Navigator.of(context).pushNamed(MyRoutes.fruitsListCategory);

            } else if(index==2){
              Navigator.of(context).pushNamed(MyRoutes.beveragesCategory);

            } else if(index==3){
              Navigator.of(context).pushNamed(MyRoutes.dairyProductCategory);

            } else if(index==4){
              Navigator.of(context).pushNamed(MyRoutes.instantFoodCategory);

            } else if(index==5){
              Navigator.of(context).pushNamed(MyRoutes.cleaningHouseHoldCategory);

            } else if(index==6){
              Navigator.of(context).pushNamed(MyRoutes.snackCategory);

            } else if(index==7){
              Navigator.of(context).pushNamed(MyRoutes.ataDalCategory);

            } else if(index==8){
              Navigator.of(context).pushNamed(MyRoutes.cleaningHouseHoldCategory);

            }else if(index==9){
              Navigator.of(context).pushNamed(MyRoutes.snackCategory);

            }else if(index==10){
              Navigator.of(context).pushNamed(MyRoutes.babyCareCategory);

            }else if(index==11){
              Navigator.of(context).pushNamed(MyRoutes.petCareListCategory);

            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // replace with desired color
                            spreadRadius: 2,
                            blurRadius: 4,
                            //offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],

                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 100,
                    width: 180,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                        //color: Colors.red,
                        height: 100,
                        // width: 30,
                        child: Image.network(category[index].image,fit: BoxFit.fill,height: 50,width: 85,),
                    ),
                      ),
                      Positioned(
                        top: -10,
                          height: 29,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red
                              ),
                                color:Colors.white,

                                borderRadius: BorderRadius.circular(6)
                         ),
                              child: Center(child: Column(
                                children: [
                                  const Text ("up to",style: TextStyle(fontSize: 10,color: Colors.red,fontWeight: FontWeight.w500),),
                                  Text ("10%off",style: TextStyle(fontSize: 12,color: Colors.red[700],fontWeight: FontWeight.w600),),
                                ],
                              )))) ,
                      ],
                    ),
                  ),
                ),
              ),


              Center(child: Text(category[index].name,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 15),))

            ],
          ),
        );


      }

    ));

  }
}
