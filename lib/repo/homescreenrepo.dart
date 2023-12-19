import 'package:get/get.dart';

class HomeRepo extends GetConnect implements GetxService{

  Future<Response> getData()async{
    Response response = await get("https://fakestoreapi.com/products?fbclid=IwAR2yLhmTope8nYxciVO-UbIseDMTjZMoL_4kXLUUcpQfu3GJLv3NWNvfGBs");
    print(response.body);
   return response;
  }
 
}