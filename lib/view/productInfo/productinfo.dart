import 'package:dots_indicator/dots_indicator.dart';
import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/dots_indicators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  List<Map<String, dynamic>> productinfo =
      Get.find<productinfoController>().productinfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: dimensions.height / 2.5,
              width: dimensions.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(productinfo[0]["image"]),
                      fit: BoxFit.contain)),
              child: Stack(
                children: [
                  Positioned(
                    top: dimensions.height20 * 12,
                    left: dimensions.width20 * 1,
                    right: dimensions.width20 * 1,
                    child: Container(
                      height: dimensions.height20 * 3,
                      decoration: BoxDecoration(
                          color: const  Color.fromRGBO(20, 18, 18, 0.965),
                          borderRadius:
                              BorderRadius.circular(dimensions.radius10)),
                      //! free shipping section over the product image
                      child: Row(
                        children: [
                          SizedBox(
                            width: dimensions.width10,
                          ),
                          Container(
                            height: dimensions.height20 * 2,
                            width: dimensions.width20 * 5,
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
                          SizedBox(
                            width: dimensions.width10,
                          ),
                          Text(
                            "free payments of \$ 49.50.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: dimensions.font10 + 3),
                          ),
                          Text(
                            "Learn more",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: dimensions.font10 + 3),
                          )
                        ],
                      ),
                    ),
                  ),
                  //! dots indicators section
                  Positioned(
                      left: dimensions.width20 * 1,
                      right: dimensions.width20 * 1,
                      bottom: dimensions.height10,
                      child:
                          // if i alreday have a one image so i have to create a static dots indicators
                          // if i have  2 or 3 image i will do a pageview builder and create a dynamic dots indicators
                          Row(
                        children: [
                          dots_indicator(),
                          SizedBox(
                            width: dimensions.width10,
                          ),
                          dots_indicator(
                              const Color.fromARGB(255, 139, 83, 83)),
                          SizedBox(
                            width: dimensions.width10,
                          ),
                          dots_indicator(
                              const Color.fromARGB(255, 139, 83, 83)),
                          SizedBox(
                            width: dimensions.width10,
                          ),
                          dots_indicator(
                              const Color.fromARGB(255, 139, 83, 83)),
                        ],
                      ))
                ],
              ),
            ),

            // the information of the product
            SizedBox(
              height: dimensions.height20 ,
            ),
            //! price of the product section
            Padding(
              padding: EdgeInsets.only(left: dimensions.LRpadmarg20),
              child: Text(
                "\$ ${productinfo[0]["price"]}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: dimensions.font20 - 4),
              ),
            ),
            SizedBox(
              height: dimensions.height10,
            ),
            //!  product title section
            Padding(
              padding: EdgeInsets.only(left: dimensions.LRpadmarg20),
              child: Text(
                " ${productinfo[0]["title"]}",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: dimensions.font20),
              ),
            ),

            SizedBox(
              height: dimensions.height10,
            ),

            //! rating section
            Padding(
              padding: EdgeInsets.only(left: dimensions.LRpadmarg20),
              child: Row(
                children: [
                  Text(
                    "Rating",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: dimensions.font10 + 5,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: dimensions.width10,
                  ),
                  Text(productinfo[0]["rating"]["rate"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: dimensions.font10 + 5,
                        color: Colors.red,
                      )),
                  Icon(Icons.star,
                      color: Colors.red, size: dimensions.font10 + 5),
                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(dimensions.TBpadmarg10),
              child: SizedBox(
                height:  dimensions.height20*2.5 ,
                width: dimensions.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Get.find<productinfoController>().choixlist.length ,
                  itemBuilder:(_, index){
                    return Padding(
                      padding:  EdgeInsets.only(right: dimensions.LRpadmarg20),
                      child: Container(
                        height: dimensions.height20*2,
                        width:  Get.find<productinfoController>().widhList[index],
                        decoration: BoxDecoration( 
                          color: Get.find<productinfoController>().colorlist[index],
                          borderRadius: BorderRadius.circular(dimensions.radius10),
                        ),
                        child: Center(
                          child: Text(
                             Get.find<productinfoController>().choixlist[index],
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: dimensions.font20 - 4
                            ),
                          ),
                        ),
                                    
                        
                      ),
                    );
                  } ),
              ),
            )






          ],
        ),
      ),
    );
  }
}
