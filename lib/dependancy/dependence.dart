import 'package:eshop/controllers/homeController.dart';
import 'package:eshop/controllers/loginController.dart';
import 'package:eshop/controllers/signupController.dart';
import 'package:eshop/repo/homescreenrepo.dart';
import 'package:get/get.dart';

class dependency{
 

 static void init()async{
   
    Get.lazyPut(() => loginController());
    Get.lazyPut(() => signupController());
    Get.lazyPut(() => HomeController());
    


    Get.lazyPut(()=>HomeRepo());
  
 }


}