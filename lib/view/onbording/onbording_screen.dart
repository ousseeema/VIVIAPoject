import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/loginscreen/signin.dart';
import 'package:eshop/view/loginscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBordingScreenn extends StatelessWidget {
  const OnBordingScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //! responsive height 
     height: dimensions.height,
     //! responsive width
     width:dimensions.width,
     // this container is photo container 
     decoration: const BoxDecoration(
       color: Colors.white,
       image: DecorationImage(
         image: AssetImage("images/oo.jpeg"),
          fit: BoxFit.cover
          
       
       )
       ),
       // we will be using stack to place the button and logo widget over the photo
       child: Stack(
        children: [
          //! this widget is the widget that contains the logo image 
          Positioned(
            top: dimensions.height20*1.5,
            left: dimensions.width20*5,
            
            child: Container(
              height:dimensions.height20*2,
              width:dimensions.width30*6+5,
              decoration:const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo1.png"),
                  fit: BoxFit.cover
                )
              ),
            ) ),
            //! this widget is the widget that contains the button create account 
          Positioned(
           bottom: dimensions.height20*6,
           left: dimensions.width20*2,
          
            child: GestureDetector(
              onTap: () {
                Get.to(()=> const signUp(),transition:Transition.fadeIn);
              
              },
              child: Container(
                height: dimensions.height20*2+12,
                width: dimensions.width30 *11,
              decoration: BoxDecoration(
                color:Colors.white ,
                borderRadius:   BorderRadius.circular(dimensions.radius10)
              ),
              child:  Center(
                child: Text("CREATE AN ACCOUNT", style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: dimensions.font20-4,
                  fontWeight: FontWeight.bold
                ),
                
                ),
                
              ),
              ),
            ),

          ), 
          //! sign in container
          Positioned(
           bottom: dimensions.height20*2+10,
           left: dimensions.width20*2,
        
            child: GestureDetector(
              onTap: () {
                Get.to(()=> const  signIn(),transition:Transition.fadeIn);
              },
              child: Container(
                height:dimensions.height20*2+12,
                width: dimensions.width30 *11,
              decoration: BoxDecoration(
                color:Colors.black ,
                borderRadius:   BorderRadius.circular(dimensions.radius10)
              ),
              child:  Center(
                child: Text("SIGN IN ", style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize:dimensions.font20-4,
                  fontWeight: FontWeight.bold
                ),
                
                ),
                
              ),
              ),
            ),

          ), 



        ],
       ),
    );
  }
}