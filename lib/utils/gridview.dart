import 'package:flutter/material.dart';
import 'package:eshop/utils/dimenssion.dart';
class gridView extends StatefulWidget {
  double price;
  String description;
   gridView({super.key, required this.price, required this.description});

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView>
 {
  @override
  Widget build(BuildContext context) {
    return  Container(
              
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(dimensions.radius20),
                  image: const DecorationImage(
                      image: AssetImage("images/oo.jpeg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: dimensions.height20 *11.5,
                      left: dimensions.width20,
                      child: SizedBox(
                        width: ,
                        height:dimensions.height20+8,
                        child: Text(
                          widget.description,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: dimensions.font20),
                        ),
                      )),
                  Positioned(
                      top: dimensions.height20 * 10,
                      left: dimensions.width20,
                      child: Text(
                        "\$ ${widget.price}",
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
            );
  }
}