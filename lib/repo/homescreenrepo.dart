import 'package:get/get.dart';

class HomeRepo extends GetConnect implements GetxService{

  Future<Response> getData()async{
    Response response = await get("https://fakestoreapi.com/products");
   
   return response;
  }
 
}