import 'package:eshop/utils/dimenssion.dart';
import 'package:flutter/material.dart';

class singlecontainer extends StatefulWidget {
  Map<String,dynamic> product;
   singlecontainer({super.key, required this.product});

  @override
  State<singlecontainer> createState() => _singlecontainerState();
}

class _singlecontainerState extends State<singlecontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions.height20*9,
      width: dimensions.width,
       
      child: Row( 
        children: [ 

          Checkbox(
            value: false,
             onChanged:(value){

            }),

            SizedBox(width: dimensions.width10,),
            Container(
               height: dimensions.height20*8,
               width: dimensions.radius30*4.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dimensions.radius10),
                  image: DecorationImage(
                    image: NetworkImage(widget.product["image"]),
                    fit: BoxFit.cover
                  )
                ),

            ),

            Padding(
              padding:  EdgeInsets.all(dimensions.LRpadmarg10-3),
              child: Column(
                children: [ 
                  
                  Text("\$ ${widget.product["price"]}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: dimensions.font20,
                    fontWeight: FontWeight.bold),),
              
                ],
              ),
            )








        ],
      ),


    );
  }
}