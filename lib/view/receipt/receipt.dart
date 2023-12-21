// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/success/payment_success.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Receipt extends StatefulWidget {
  const Receipt({super.key});

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  double total = double.parse(Get.find<cartController>().total.toStringAsFixed(2));
  
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [ 
           Row(
               
                children: [ 
                IconButton(
                  onPressed: (){
                  Get.back();
                }, icon:  Icon(Icons.arrow_back,size: dimensions.icon24+4,)),
                SizedBox(width:dimensions.width30*4,),
                 
                  Text("RECEIPT",style: TextStyle(fontSize: dimensions.font20-4,fontWeight: FontWeight.bold),),
               ],),
               SizedBox(height: dimensions.height20*6,),
               Container(
                            height: dimensions.height20 * 3,
                            width: dimensions.width20 * 9,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(244, 182, 199, 10),
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius10)),
                            child:  Center(
                                child: Text(
                              "Klarna.",
                              style: TextStyle(fontSize:dimensions.icon24, fontWeight: FontWeight.bold),
                            )),
                          ),

                          SizedBox(height: dimensions.height20*6,),

                          Padding(
                            padding:  EdgeInsets.only(left: dimensions.LRpadmarg30,right: dimensions.LRpadmarg30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Text("SUBTOTAL", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                                Text("\$ ${total} ", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(height: dimensions.height10*1.5,),
                           Padding(
                            padding:  EdgeInsets.only(left: dimensions.LRpadmarg30,right: dimensions.LRpadmarg30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Text("SHIPMENT SERVICE", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                                Text("\$ 02.15 ", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                            SizedBox(height: dimensions.height10*1.5,),
                           Padding(
                            padding:  EdgeInsets.only(left: dimensions.LRpadmarg30,right: dimensions.LRpadmarg30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Text("DISCOUNT", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                                Text("\$ 20.00 ", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold, color: const Color.fromRGBO(246, 88, 36, 10)),),
                              ],
                            ),
                          ),
                           SizedBox(height: dimensions.height20*1.5,),
                           Divider(
                            thickness: 2,
                            endIndent: 20,
                            indent: 20,
                            color: Colors.grey[300],
                          ),
          SizedBox(height: dimensions.height20*1.5,),
                         Padding(
                            padding:  EdgeInsets.only(left: dimensions.LRpadmarg30,right: dimensions.LRpadmarg30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Text("DISCOUNT", style: TextStyle(fontSize:dimensions.font10+6, fontWeight: FontWeight.bold),),
                                Text("\$ ${double.parse((total-20+2.15).toStringAsFixed(2))} ", style: TextStyle(fontSize:dimensions.font20+3, fontWeight: FontWeight.bold, ),),
                              ],
                            ),
                          ),
                          SizedBox(height: dimensions.height20*7,),

                           GestureDetector(
                onTap: (){
                  
                  Get.to(()=>const payment_success(),transition: Transition.rightToLeftWithFade);


                },
                child: Container(
                  height: dimensions.height20*2.5,
                  width: dimensions.width-40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(dimensions.radius10)
                  ),
                  child: Center(child: Text("PAY NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: dimensions.font10+4),)),
                ),
              )





        ],
      )),
    );
  }
}