import 'package:eshop/utils/dimenssion.dart';
import 'package:flutter/material.dart';

class netify extends StatefulWidget {
  const netify({super.key});

  @override
  State<netify> createState() => _netifyState();
}

class _netifyState extends State<netify> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: dimensions.height/2,
              width: dimensions.width,
              
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/test.png"),fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(height: dimensions.height20,),
          Container(
            height: dimensions.height20*3,
            width: dimensions.width30*10,
            decoration: BoxDecoration( 
              color:const Color.fromARGB(246, 88, 36, 83) ,
              borderRadius: BorderRadius.circular(dimensions.height20),
            ),
            child: Center(
              child: Text("No Notification",style: TextStyle(color: Colors.white,fontSize: dimensions.font20),)
            ),
            
          )
        ],
      ),
    );
  }
}