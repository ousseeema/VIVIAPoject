import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class singlecontainer2 extends StatefulWidget {
  Map<String, dynamic> product ;
   singlecontainer2({super.key, required this.product});

  @override
  State<singlecontainer2> createState() => _singlecontainer2State();
}

class _singlecontainer2State extends State<singlecontainer2> {
  Map<String, dynamic> product={};

  @override
  void initState() {
    super.initState();
    product = widget.product;
   
  }
  @override
  Widget build(BuildContext context) {
    return 
    GetBuilder<cartController>(
      builder: (controler) {
        return 
        Container(
        height: dimensions.height20 * 9,
        width: dimensions.width,
        child: Padding(
          padding:  EdgeInsets.only(left: dimensions.LRpadmarg10),
          child: Row(
            children: [
          
            
            
              SizedBox(
                width: dimensions.width10,
              ),
              Container(
                height: dimensions.height20 * 8,
                width: dimensions.radius30 * 4.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(dimensions.radius10),
                    image: DecorationImage(
                        image: NetworkImage(widget.product["image"]),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.all(dimensions.LRpadmarg10 - 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //price text
                    Text(
                      "\$ ${product["price"]}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: dimensions.font20,
                          fontWeight: FontWeight.bold),
                    ),
          
                    SizedBox(
                      height: dimensions.height10,
                    ),
                    // tiitle text
                    SizedBox(
                      height: dimensions.height20 * 3,
                      width: dimensions.width30 * 5,
                      child: Text(
                        product["title"],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: dimensions.font20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
          
                    // quantity text
          
                    SizedBox(
                      height: dimensions.height10,
                    ),
          
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                             product = controler.incrementanddecriment(true,product);
                             
                          },
                          child: Container(
                            height: dimensions.height10 * 3,
                            width: dimensions.width10 * 3,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius40),
                                color: Colors.black),
                            child: Center(
                                child: Text(
                              "+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: dimensions.font20 -1),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: dimensions.width20 / 2,
                        ),
                        Text(
                        "${product["quantity"]}" ,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: dimensions.font20),
                        ),
                        SizedBox(
                          width: dimensions.width20 / 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            
                           var  newproduct1 =    controler.incrementanddecriment(false,product);
                             product = newproduct1;
                          },
                          child: Container(
                            height: dimensions.height10 * 3,
                            width: dimensions.width10 * 3,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius40),
                                color: Colors.white),
                            child: Center(
                                child: Text(
                              "-",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: dimensions.font20 -1),
                            )),
                          ),
                        ),
                          SizedBox(
                          width: dimensions.width20 / 2,
                        ),
                        const Text( "Size : ", style: TextStyle(color: Colors.grey),), 
                        const Text( "M", style: TextStyle(color: Colors.black),),
          
                      ],
                    )
                  ],
                ),
              )
            ],
          )
       
        ),
      );
      },

    );
  }
}