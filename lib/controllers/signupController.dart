import 'package:get/get.dart';

class signupController extends GetxController{
    

    bool validate_Email_Pass_Name(String email , String password , String name ) {
      if(GetUtils.isEmail(email)&& password.length>=8 && name.isNotEmpty){
        return true ;
      }
      else{
 
        return false ;
      }

    }

}