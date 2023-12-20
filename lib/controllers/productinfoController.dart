// ignore_for_file: non_constant_identifier_names

import 'package:eshop/utils/dimenssion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class productinfoController extends GetxController{
   

 List<Map<String, dynamic>> productinfo =[];
 List <Map<String, dynamic>> cartlist=[];
  List<String> choixlist=[
    "NEW",
    "BOSSXFERDDIE MERCURY",
    "REGULAR FIT",
    "DYNAMIC FIT",
    "SLIM FIT",
  ];

  List colorlist=[
    Colors.black,
    Colors.pink[100],
    Colors.purple[100],
    Colors.blue[100],
    Colors.green[100],
  ];
  List widhList=[
    dimensions.width20*3,
    dimensions.width20*13,
    dimensions.width20*7,
    dimensions.width20*7,
    dimensions.width20*4,

  ];

  void add_Product_Info(product){
    productinfo =[];
    productinfo.add(product);
  }

  void addProductToCart(Map<String, dynamic> product){
    cartlist.add(product);
    update();
  }
  








}