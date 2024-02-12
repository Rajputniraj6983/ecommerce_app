
import 'package:flutter/material.dart';
import 'package:ui/utils/list.dart';


class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

late int i = 0;
var list = null;

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    //var productData = ModalRoute.of(context)!.settings.arguments as Map;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: [
              Container(
               height: 350, width: double.infinity,decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
                  child: Column(
                   children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(0.0)
                        ,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/${list[i]['img']}",fit: BoxFit.contain, height: 280,),
                        )),
                   ],
                  ),
              ),
                SizedBox(height: 10,),
                Container(
                  height: 90,width: 380,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13,top: 6),
                        child: Row(
                         children: [
                          Text('Mens Shoes',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w800),),
                           SizedBox(
                            width: 170,
                           ),
                           Icon(Icons.star,color: Colors.orange,size: 25,),
                             Text('(4.5)',style: TextStyle(color: Colors.black87,fontSize: 20),),
                         ]
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(list[i]['name'],style: TextStyle(color: Colors.black,fontSize: 20,),),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(right: 15.0),
                             child: Text("\$${list[i]['prize']}",style: TextStyle(color: Colors.black,fontSize: 20),),
                           )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,width: 380,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13,top: 6),
                        child: Row(
                            children: [
                              Text('Size:',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w800),),
                              SizedBox(
                                width: 220,
                              ),
                              Text('UK UE US ',style: TextStyle(color: Colors.black87,fontSize: 18),),
                            ]
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 12),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                             width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                            ),
                            child: Center(child: Text(' 5 ',style: TextStyle(color: Colors.black87,fontSize: 30),))),
                          SizedBox(
                            height: 25,width: 25,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                              ),
                              child: Center(child: Text(' 6 ',style: TextStyle(color: Colors.black87,fontSize: 30),))),
                          SizedBox(
                            height: 25,width: 25,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                              ),
                              child: Center(child: Text(' 7 ',style: TextStyle(color: Colors.black87,fontSize: 30),))),
                          SizedBox(
                            height: 25,width: 25,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                              ),
                              child: Center(child: Text(' 8 ',style: TextStyle(color: Colors.black87,fontSize: 30),))),
                          SizedBox(
                            height: 25,width: 25,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Container(
                    height: 45,width: 100,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white),color: Colors.white),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 8),
                          child: Row(
                              children: [
                                Text('Colors:',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w900),),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 175),
                  child: Container(
                    height: 45,width: 200,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300),color: Colors.grey.shade300),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 7),
                          child: Row(
                              children: [
                                CircleAvatar(radius: 15,
                                  backgroundColor: Colors.black,
                                  child:  Icon(Icons.done,color: Colors.white,),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(radius: 15,
                                  backgroundColor: Colors.white,
                                ),SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(radius: 15,
                                  backgroundColor: Colors.orange,
                                ),SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(radius: 15,
                                  backgroundColor: Colors.green,
                                ),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Container(
                    height: 45,width: 200,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white54),color: Colors.white54),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 8),
                          child: Row(
                              children: [
                                Text('Description :',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w900),),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,width: 380,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white54),color: Colors.white54),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13,top: 8),
                        child: Row(
                            children: [
                              Text('A pair of white,blue and green sports',style: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.w300),),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              // Text('shoes has regular styling,',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w300),),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              // Text('Mesh upper,Cushioned footped',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w300),),
                            ]
                        ),
                      ),SizedBox(
                        height: 0,
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Container(
                            height: 50,width: 150,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.orange),color: Colors.orange),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,top: 10,left: 10),
                                  child: Row(
                                      children: [
                                        Text('Add To Cart',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w900),),
                                      ]
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),
    );
  }
 }


