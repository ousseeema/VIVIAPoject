import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/single2.dart';
import 'package:eshop/utils/singlecontainer.dart';
import 'package:eshop/view/receipt/receipt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_flutter/icons_flutter.dart';

class shipment extends StatefulWidget {
  const shipment({super.key});

  @override
  State<shipment> createState() => _shipmentState();
}

class _shipmentState extends State<shipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: 
      Padding(
        padding:  EdgeInsets.all(dimensions.LRpadmarg10),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
              Row(
               
                children: [ 
                IconButton(
                  onPressed: (){
                  Get.back();
                }, icon:  Icon(Icons.arrow_back,size: dimensions.icon24+4,)),
                SizedBox(width:dimensions.width30*4,),
                 
                  Text("SHIPMENT",style: TextStyle(fontSize: dimensions.font20-4,fontWeight: FontWeight.bold),),
              ],),
              SizedBox(height: dimensions.height10,),
              Row(
               
                children: [ 
                   Text("SHIPMENT LOCATION",style: TextStyle(fontSize: dimensions.font10+3,fontWeight: FontWeight.bold),),
               
                SizedBox(width:dimensions.width30*3,),
                 
                  Text("CHANGE LOCATION",style: TextStyle(fontSize: dimensions.font10+3,fontWeight: FontWeight.bold, color:Color.fromRGBO(246, 88, 36, 1) ),),
              ],),
               SizedBox(height: dimensions.height20,),
               Text('STUDIO',style: TextStyle(fontSize: dimensions.font10+6,fontWeight: FontWeight.bold)),
                SizedBox(height: dimensions.height10,),
                Text("OUSSEMA FERCHICHI (+216 27012226)",style: TextStyle(fontSize: dimensions.font10+4,fontWeight: FontWeight.w500)),
                Text("Mednine , Djerba , Midoun ",style: TextStyle(fontSize: dimensions.font10+4,fontWeight: FontWeight.w500)),
                SizedBox(height: dimensions.height10,),
                 Divider(
                thickness: 1,endIndent: 20,indent: 20,
                color: Colors.grey[300],),
                SizedBox(height: dimensions.height10,),
         Container(
             
              height: dimensions.height20*3,
              width: dimensions.width-40,
              decoration: BoxDecoration( 
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(dimensions.radius10)
              ),
              child: Row(
                children: 
              
               [
                  SizedBox(width: dimensions.width20,), 
                 const Icon(FlutterIcons.car_alt_faw5s),
                  SizedBox(width: dimensions.width20,),
                  const  Text("SHIPMENT ", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: dimensions.width30*4,),
                   const Icon(FlutterIcons.fedex_faw5d, size:40 ,),
                   SizedBox(width: dimensions.width20,),
                   const Icon(Icons.arrow_forward_ios),
            
            
             
              ]),
            ),
            SizedBox(height: dimensions.height10/2,),
           Container(
             
              height: dimensions.height20*3,
              width: dimensions.width-40,
              decoration: BoxDecoration( 
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(dimensions.radius10)
              ),
              child: Row(
                children: 
              
               [
                  SizedBox(width: dimensions.width20,), 
                 const Icon(FlutterIcons.payment_mdi),
                  SizedBox(width: dimensions.width20,),
                  const  Text("PAYMENT ", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: dimensions.width30*3.5,),
                   Container(
                            height: dimensions.height20 * 1.5,
                            width: dimensions.width20 * 4,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(244, 182, 199, 10),
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius10)),
                            child: const Center(
                                child: Text(
                              "Klarna",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                   SizedBox(width: dimensions.width10,),
                   const Icon(Icons.arrow_forward_ios),
            
                  
             
              ]),
            ), 
           
            Padding(
              padding:  EdgeInsets.all(dimensions.height10/2),
              child: Text("PRODUCT ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: dimensions.font10+4),),
            ),
           

           SizedBox(
            height: dimensions.height20*11.5,
            width: dimensions.width,
            child: ListView.builder(
              itemCount:Get.find<cartController>().cartlist.length ,
              itemBuilder: (_, index){
                return singlecontainer2(product:Get.find<cartController>().cartlist[index] ,);
              }),
           ),
            SizedBox(height: dimensions.height10,),
             Center(
               child: Container(
               
                height: dimensions.height20*2.5,
                width: dimensions.width-80,
                decoration: BoxDecoration( 
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(dimensions.radius10)
                ),
                child: Row(
                  children: 
                
                 [
                    SizedBox(width: dimensions.width20,), 
                   const Icon(Icons.discount_outlined),
                    SizedBox(width: dimensions.width10,),
                    const  Text("USE YOUR PROMO CODE ", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: dimensions.width30*1.5,),
                     const Icon(Icons.arrow_forward_ios),
                           
                           
               
                ]),
                           ),
             ),
            const Divider(thickness: 2,
            endIndent: 15,
            indent: 15,),
            SizedBox(height: dimensions.height10,),
            Row(children: [
              SizedBox(width: dimensions.width20,),
             Column(
               children: [
                 Text("TOTAL PAYMENT:",style: TextStyle(fontWeight: FontWeight.bold, fontSize: dimensions.font10+4,  color: Colors.black),),
                 GetBuilder<cartController>(builder: 
                 (controller){

                  return Text('\$ ${controller.total}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: dimensions.font10+8,  color: Colors.black));

                 })
               ],
             ),

              SizedBox(width: dimensions.width30*2.5,),
              GestureDetector(
                onTap: (){
                  
                  Get.to(()=>const Receipt(),transition: Transition.rightToLeftWithFade);


                },
                child: Container(
                  height: dimensions.height20*2.5,
                  width: dimensions.width30*5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(dimensions.radius10)
                  ),
                  child: Center(child: Text("CHECKOUT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: dimensions.font10+4),)),
                ),
              )
            ],),
        
        
        
        
          ],
        ),
      )),
    );
  }
}