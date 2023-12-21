import 'package:get/get.dart';

class cartController extends GetxController{
  List <Map<String, dynamic>> cartlist =[];
 
   double total=0.0 ;
  void verificationAndAdd( value , product){

    if(value){
      
      cartlist.add(product);

       update();
    }
    else if(value== false){
      cartlist.remove(product);
      update();
  }
  }

     incrementanddecriment(value,product){
      if (value) {
        product['quantity'] += 1;

   } else if (!value && product['quantity'] > 1) {
       product['quantity'] -= 1;
    }

  updateTotalPrice(); // Recalculate the total price
   update(); 
    return product;
   }

   
void updateTotalPrice() {
  total = 0.0;
  cartlist.forEach((element) {
    total += (element['price'] * element['quantity']);
  });
   total = double.parse(total.toStringAsFixed(2));
}



}