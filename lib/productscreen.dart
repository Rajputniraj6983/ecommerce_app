import 'package:flutter/material.dart';
import 'package:ui/utils/list.dart';

import 'secondscreen.dart';
//import 'splashscreen.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.density_medium_outlined,
                      ),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.shopping_bag_outlined),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(color: Colors.black87, fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ALL",
                        style: TextStyle(color: Colors.black87,fontSize: 20,
                      //      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey.shade300),color: Colors.Grey.shade300)
                        ),
                      ),
                      Text(
                        "Shoes",
                        style: TextStyle(color: Colors.orange, fontSize: 20,
                            ),
                      ),
                      Text(
                        "Clothes",
                        style: TextStyle(color: Colors.black87, fontSize: 20,
                        ),
                      ),
                      Text(
                        "Watches",
                        style: TextStyle(color: Colors.black87, fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(l1.length, (index1) =>  GestureDetector(
                        onTap: () {
                          Navigator.push( context,MaterialPageRoute(builder:(context)=>const secondscreen()
                          ),
                          );
                          arguments: l1[index1];
                         i = index1;
                         list = l1;
                        },
                        child: productlist(img: l1[index1]['img'],name: l1[index1]['name'],prize:l1[index1]['prize'] )))
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20,left: 10,),
                      child: Row(
                        children: [
                          Container(
                            height: 30,width: 85,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black),color: Colors.grey),
                            child: Text("Popular",style: TextStyle(color: Colors.black87,fontSize: 20,),),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Container(
                            height: 25,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black),color: Colors.grey),
                            child: Text("Show all",style: TextStyle(color: Colors.black87,fontSize: 19,),
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(l2.length, (index2) =>  GestureDetector(
                              onTap: () {
                                Navigator.push( context,MaterialPageRoute(builder:(context)=>const secondscreen()
                                ),
                                );
                                arguments: l2[index2];
                                i = index2;
                                list = l2;
                              },

                              child: productlist1(img: l2[index2]['img'],name: l2[index2]['name'],prize:l2[index2]['prize'] )))                        ),

                      ),
                    ],
                  ),

                ),
            ],
            ),
           ),
           //  bottomNavigationBar: BottomNavigationBar(
            //    items: [
            //      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            //       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            //          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "cart"),
            //            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
           // ],
         //),
      ),
      ),
    );

  }
}

Widget productlist({int? prize,String? name,String? img})
{
        return Padding(
          padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250, width: 170,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
              child: Column(
                children: [
                  Padding(
                   padding: const EdgeInsets.only(right: 130,top: 15,),
                      child: Icon(Icons.favorite_border,color: Colors.black,size: 20,)
                 ),
                  Image.asset('assets/$img',fit: BoxFit.cover,),
                  Text(name!,overflow: TextOverflow.ellipsis ,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
                  Text("\$$prize",style: TextStyle(color: Colors.black,fontSize: 15),)
              ],
              )
            ),
          );
}

Widget productlist1({int? prize,String? name,String? img})
{
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 320,top: 5),
                child: Icon(Icons.favorite_border,color: Colors.black,size: 20,)
            ),
            Container(
              height: 130, width: 235,
              child: Image.asset('assets/$img',fit: BoxFit.cover,),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(name!,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
            Text("\$$prize",style: TextStyle(color: Colors.black,fontSize: 25),)
          ],
        )
    ),
  );
}

