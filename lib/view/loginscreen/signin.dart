
import 'package:eshop/controllers/loginController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/homescreen/homeScreen.dart';
import 'package:eshop/view/loginscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  final TextEditingController emailcontroller =  TextEditingController();
    final TextEditingController passwordcontoller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        
        child: SingleChildScrollView(
          
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [
            Row(
              children: [
                const Spacer(),
                //! sign up text
                GestureDetector(
                  onTap: (){
                   Get.to(()=>const signUp());

                  },
                  
                  child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey[400]),))
              ],
            ),
            //*espace 
             SizedBox(height: dimensions.height20,),
          
             //! login mot fi awel el page
             Padding(
              padding: const  EdgeInsets.only(left: 10),
              child: Text("Log in",style: TextStyle(
                fontSize: dimensions.font20, fontWeight: FontWeight.bold,
          
              ), )),
               //*espace 
              SizedBox(height: dimensions.height20*2+10,),
            //! email text field 
             TextField(
              controller: emailcontroller ,          
              decoration: InputDecoration(
                border:const UnderlineInputBorder(),
                hintText:"Enter your email here" ,
                label:const Text("Email"),
               prefixIcon: const Icon(Icons.email), 
               labelStyle: TextStyle(color: Colors.grey[400]),
               errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 171, 40, 31), style: BorderStyle.solid))
                ),
            ),
             //*espace 
             SizedBox(height: dimensions.height20*2,),
            //! textfiled password 
             TextField(
              // controller to save the passsword in 
              controller: passwordcontoller,


              obscureText: true,         
              decoration: InputDecoration(
                border:const UnderlineInputBorder(),
                hintText:"Enter your password here" ,
                label:const Text("Password"),
               prefixIcon: const Icon(Icons.password), 
               labelStyle: TextStyle(color: Colors.grey[400]),
          
               errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 171, 40, 31), style: BorderStyle.solid))
                ),
            ),
             //*espace 
             SizedBox(height: dimensions.height20+10,),
          
            // ! button log in 
           Center(
            child: GestureDetector(
              onTap: (){
                bool test = Get.find<loginController>().verification(emailcontroller.text, passwordcontoller.text);

                 if(test){
                   Get.snackbar("Done", "WELCOME ", backgroundColor: Colors.green) ;
                   Get.to(()=> const HomeScreen());
                }
                else{
                    Get.snackbar("error", "error in information ", backgroundColor: Colors.red) ;
                    

                }


              

              },
              child: Container(
                height: dimensions.height20*2+4,
                width:dimensions.width30*9.3,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child:  Center(child:  Text("Log in ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: dimensions.font20-5),)),
              ),
            ),
           ),
          
             SizedBox(height: dimensions.height20*2,),
             
               Center(
                child: Text("Or sign up with social account ", style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold)),
              ),
               SizedBox(height: dimensions.font40,),
              
              Row(
                children: [
                   SizedBox(width: dimensions.width20*2,),
                  Container( 
                    decoration: BoxDecoration(
                      border: Border.all( color: Colors.black , width: 1.0),
                      borderRadius: BorderRadius.circular(dimensions.radius20-5)
                    ),
                    child: Padding(
                      
                      padding: const EdgeInsets.all(10.0),
                      child:   Row(
                        children: [
                          Icon(Icons.facebook, size: dimensions.icon24+6,),
                          SizedBox(width: dimensions.width10,),
                          Text("Facebook", style:TextStyle(fontSize: dimensions.font10+5),)
                        ],
                      ),
                    ),
                  ),
          
          
                  //* espace
                   SizedBox(width: dimensions.width20,),
          
          
                  // ! container besh nhouto fiha logo twitter 
          
                   Container( 
                    decoration: BoxDecoration(
                      border: Border.all( color: Colors.black , width: 1.0),
                      borderRadius: BorderRadius.circular(dimensions.radius10+4)
                    ),
                    child: Padding(
                      
                      padding: const EdgeInsets.all(10.0),
                      child:   Row(
                        children: [
                          Icon(FlutterIcons.twitter_ant, size: dimensions.icon24+5,),
                          SizedBox(width: dimensions.width10,),
                          Text("Twitter      ", style:TextStyle(fontSize: dimensions.font20-4),)
                        ],
                      ),
                    ),
                  )
          
          
          
          
                ],
              )
          
          
            
            
          
          
             
          
          
          
                   
          
          ]),
        ),
      ),
    ));
  }
}
