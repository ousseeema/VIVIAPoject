import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/singlecontainer.dart';
import 'package:eshop/view/shipment/shipment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

class orderDetails extends StatefulWidget {
  const orderDetails({super.key});

  @override
  State<orderDetails> createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
  List <Map<String,dynamic>> orderList= Get.find<productinfoController>().cartlist;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
        
            Row(
             
              children: [ 
              IconButton(
                onPressed: (){
                Get.back();
              }, icon:  Icon(Icons.arrow_back,size: dimensions.icon24+4,)),
              SizedBox(width: dimensions.width30*4.5,),
               
               const Text("BAGS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: dimensions.height20,),

            SizedBox(
              height: dimensions.height20*25,
              width: dimensions.width,

              child:
               ListView.builder(
                itemCount: orderList.length,
                itemBuilder: (_, index){
                  return singlecontainer(product: orderList[index],);
                }),
            ),
         
            SizedBox(height: dimensions.height10-2,),
           
            Center(
              child: Container(
               
                height: dimensions.height20*3,
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
                  
                  Get.to(()=>const shipment(),transition: Transition.rightToLeftWithFade);


                },
                child: Container(
                  height: dimensions.height20*2.5,
                  width: dimensions.width30*6,
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
      ),

    );
  }
}