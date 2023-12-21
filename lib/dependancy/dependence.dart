import 'package:eshop/controllers/carteController.dart';
import 'package:eshop/controllers/homeController.dart';
import 'package:eshop/controllers/loginController.dart';
import 'package:eshop/controllers/productinfoController.dart';
import 'package:eshop/controllers/signupController.dart';
import 'package:eshop/repo/homescreenrepo.dart';
import 'package:get/get.dart';

class dependency{
 

 static void init()async{
   // controller
    Get.lazyPut(() => loginController());
    Get.lazyPut(() => signupController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => productinfoController(),fenix: true);
    Get.lazyPut(() => cartController(),fenix: true);

    // repo
    Get.lazyPut(()=>HomeRepo());
  
 }


}