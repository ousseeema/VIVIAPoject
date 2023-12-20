


import 'package:eshop/repo/homescreenrepo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  bool iswoman= false;
  int  selectedIndex = 0;
  bool isloading= true;
  var listproduct=[];
  //! type of the product divided in 4 ca
   var listProductMan =[];
   var listPoductWoman =[];
   var listPoductJewelery =[] ;
   var listProductElectronics =[];

   //! cart list of products
   List ProductCartList =[];
 List<String>  categoryList = [
    "NEW IN",
    "CLOTHING",
    "ELECTRONICS",
    "KING & QUEEN ",
    "SHOES & BAGS",
    "ACCESSORIES",
  ];

  HomeRepo homerepo =Get.find();
  

  void changeManWoman(bool value){

  if(value){
    iswoman = true;
    categoryList = [
    "CLOTHING",
    "JEWELERY",
    "ELECTRONICS",
    "HAIRE",
    "SHOES & BAGS",
    "MAKE UP",
  ];
  update();

  }
  else{
    iswoman = false;
    categoryList = [
    "NEW IN",
    "CLOTHING",
    "ELECTRONICS",
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


 void getData() async {
 
    Response response = await homerepo.getData();
    print(response.body);
    if(response.status.hasError){
      print("error");
    }
    else{

      listproduct = response.body;
      listproduct.forEach((element) {
         if(element["category"]== "men's clothing"){
          listProductMan.add(element);
         }
         else if(element["category"]=="jewelery"){
          listPoductJewelery.add(element);
         }
         else if(element["category"]=="electronics"){
          listProductElectronics.add(element);

         }
         else{
          listPoductWoman.add(element);

         }
      });

      isloading = false;
      update();
    }

    
}





}


