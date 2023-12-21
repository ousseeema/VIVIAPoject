import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/mainScreen/mainScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class payment_success extends StatelessWidget {
  const payment_success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Padding(
          padding:  EdgeInsets.all(dimensions.height20),
          child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Row(
                 
                  children: [ 
                  SizedBox(width:dimensions.width30*4,),
                   
                    Text("TRANSACTION",style: TextStyle(fontSize: dimensions.font20-4,fontWeight: FontWeight.w500),),
                 ],),
                 SizedBox(height: dimensions.height20*5,),
                 Container(
                  height: dimensions.height10*30,
                  width: dimensions.width,
                  decoration:const  BoxDecoration( 
                    image: DecorationImage(
                      image: AssetImage("images/success.png"),
                      fit: BoxFit.cover,
                    ),
                  
                  ),
                 ),

                  SizedBox(height: dimensions.height20*4,),
                  Text("Payment Success",style: TextStyle(fontSize: dimensions.font30-4,fontWeight: FontWeight.bold),),
                  SizedBox(height: dimensions.height10,),
                  Text("Your item will arrive at your address",style: TextStyle(
                    fontSize: dimensions.font20-4,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[400]),), 
                 Text("according to the delevery date",style: TextStyle(
                  fontSize: dimensions.font20-4,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[400]),),
                  SizedBox(height: dimensions.height20,), 
                   GestureDetector(
                onTap: (){
                  Get.find<cartController>().cartlist.clear();
                  Get.find<productinfoController>().cartlist.clear();
                  Get.find<cartController>().total=0.0;
                  Get.offAll(()=>const mainScreen(),transition: Transition.rightToLeftWithFade);


                },
                child: Container(
                  height: dimensions.height20*2.5,
                  width: dimensions.width-40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(dimensions.radius10)
                  ),
                  child: Center(child: Text("BACK TO SHOP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: dimensions.font10+4),)),
                ),
              ),
              SizedBox(height: dimensions.height10,),
              // 
               GestureDetector(
                onTap: (){
                  
                 // Get.to(()=>const payment_success());


                },
                child: Container(
                  height: dimensions.height20*2.5,
                  width: dimensions.width-40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(dimensions.radius10)
                  ),
                  child: Center(child: Text("TRANSACTION DETAIL",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: dimensions.font10+4),)),
                ),
              )
          

      


            ],
            
          
          ),
        ),
      ),

    );
  }
}