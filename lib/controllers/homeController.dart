import 'package:eshop/model/productModel.dart';
import 'package:eshop/repo/homescreenrepo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  bool iswoman= false;
  int  selectedIndex = 0;
  bool isloading= true;

  List<product> listproduct=[];
 List categoryList = [
    "NEW IN",
    "CLOTHING",
    "NEW IN ",
    "KING & QUEEN ",
    "SHOES & BAGS",
    "ACCESSORIES",
  ];

  HomeRepo homerepo =Get.find<HomeRepo>();
  

  void changeManWoman(bool value){

  if(value){
    iswoman = true;
    categoryList = [
    "NEW IN",
    "TOP",
    "MAKE UP ",
    "HAIRE",
    "SHOES & BAGS",
    "ACCESSORIES",
  ];
  update();

  }
  else{
    iswoman = false;
    categoryList = [
    "NEW IN",
    "CLOTHING",
    "NEW IN ",
    "KING & QUEEN ",
    "SHOES & BAGS",
    "ACCESSORIES",
  ];
   update();
  }
   
  }


 void letindexChange(index){
    selectedIndex = index;
    update();
 }


 void getData()async{
  Response response = await homerepo.getData();

  if(response.statusCode==200){
    listproduct = response.body.map((e) => product.fromJson(e));
    isloading =false;
    update();
  }
  else{
    print("error getting data ");
    isloading= true;
    update();
  }


 }


}