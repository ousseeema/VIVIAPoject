import 'package:eshop/controllers/homeController.dart';
import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/view/productInfo/productinfo.dart';
import 'package:flutter/material.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:get/get.dart';
class gridView extends StatefulWidget {
 Map<String, dynamic> product;
   gridView({super.key,required this.product});

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView>
 {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.find<productinfoController>().add_Product_Info(widget.product);
        Get.to(()=> const  ProductInfo());
      },
      child: Container(
              
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(dimensions.radius20),
                  image:  DecorationImage(
                      image: NetworkImage(widget.product["image"]),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: dimensions.height20 *11.5,
                      left: dimensions.width20,
                      child: SizedBox(
                        width:dimensions.radius30*5 +7,
                        height:dimensions.height20+8,
                        child: Text(
                         widget.product["title"],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.blue,
                              //fontWeight: FontWeight.bold,
                              fontSize: dimensions.font20),
                        ),
                      )),
                  Positioned(
                      top: dimensions.height20 * 10,
                      left: dimensions.width20,
                      child: Text(
                        "\$ ${widget.product["price"]}",
                        style: TextStyle(
                            color: Colors.white,
                            
                            fontSize: dimensions.font20),
                      )),
                  Positioned(
                      top: dimensions.height20 * 7.6,
                      left: dimensions.width20,
                      child: Container(
                        height: dimensions.height20*2,
                        width: dimensions.width30*2,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 88, 36, 1),
                          borderRadius:
                              BorderRadius.circular(dimensions.radius10),
                        ),
                        child: Center(
                          child: Text(
                            "NEW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: dimensions.font20 - 4),
                          ),
                        ),
                      ))
                ],
              ),
            ),
    );
  }
}