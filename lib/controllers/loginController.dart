import 'package:get/get.dart';

class loginController extends GetxController{
  
  
  bool verification(String email, String password){
    if(GetUtils.isEmail(email) && password.length >8 ){
      return true;
    }else{
      return false;
    }
  }


}