import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/singlecontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              height: dimensions.height20*30,
              width: dimensions.width,

              child:
               ListView.builder(
                itemCount: orderList.length,
                itemBuilder: (_, index){
                  return singlecontainer(product: orderList[index],);
                }),
            ),




            
        
        
        
        
        
        
        
        
        
        
          ],
        ),
      ),

    );
  }
}