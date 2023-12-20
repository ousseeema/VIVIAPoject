
import 'package:eshop/controllers/signupController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/homescreen/homeScreen.dart';
import 'package:eshop/view/loginscreen/signin.dart';
import 'package:eshop/view/mainScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  var aa ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        
        child: SingleChildScrollView(
          
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [
            Row(
              children: [
                const Spacer(),
                
                GestureDetector(
                  onTap: (){
                  Get.off(()=>const signIn(),transition:Transition.fadeIn);
                  },
                  child: Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey[400]),))
              ],
            ),
            //*espace 
             SizedBox(height: dimensions.height20,),
          
             //! login text in the top 
             Padding(
              padding:  const EdgeInsets.only(left: 10),
              child: Text("Sign up",style: TextStyle(
                fontSize: dimensions.font20-4, fontWeight: FontWeight.bold,
          
              ), )),
               //*espace 
              SizedBox(height: dimensions.height20*2,),
            //! email textfield 
             TextField(
               controller: emailcontroller,
             
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
             SizedBox(height: dimensions.height20,),

            //! text field mtaa name 
                TextField(
                  controller: namecontroller,
          
              decoration: InputDecoration(
                border:const UnderlineInputBorder(),
                hintText:"Enter your name here" ,
                label:const Text("Name"),
               prefixIcon: const Icon(Icons.person), 
               labelStyle: TextStyle(color: Colors.grey[400]),
               errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 171, 40, 31), style: BorderStyle.solid))
                ),
            ),
             //*espace 
             SizedBox(height: dimensions.height20,),
            //! textfiled password 
             TextField(
              controller:passwordcontroller ,
              //! not to show password 
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
             SizedBox(height: dimensions.height20,),
          
            // ! button log in 
           Center(
            
            child: GestureDetector(
              onTap: (){
                bool test = Get.find<signupController>().validate_Email_Pass_Name(emailcontroller.text, passwordcontroller.text, namecontroller.text);
                      if(test){
                         Get.snackbar("done", "welcome  ", backgroundColor:const Color.fromARGB(255, 139, 83, 83)) ;
                    Get.offAll(()=> const mainScreen(),transition:Transition.fadeIn);
                 
                }
                else{
                    Get.snackbar("error", "error in information ", backgroundColor: Colors.red) ;
                }
               

              },
              child: Container(
                height: dimensions.height20*2+4,
                width:dimensions.width30*9.3,
                decoration:  BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(dimensions.radius10+5))
                ),
                child:  Center(child:  Text("Sign up ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: dimensions.font10+4),)),
              ),
            ),
           ),
          
             SizedBox(height: dimensions.height20+dimensions.height10,),
             
               Center(
                child: Text("Or sign up with social account ", style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold)),
              ),
               SizedBox(height: dimensions.height20+dimensions.height10),
              
              Row(
                children: [
                   SizedBox(width: dimensions.width30+dimensions.width10,),
                  Container( 
                    decoration: BoxDecoration(
                      border: Border.all( color: Colors.black , width: 1.0),
                      borderRadius: BorderRadius.circular(dimensions.radius10+5)
                    ),
                    child: Padding(
                      
                      padding: const  EdgeInsets.all(10.0),
                      child:   Row(
                        children: [
                          Icon(Icons.facebook, size: dimensions.icon24+5,),
                          SizedBox(width: dimensions.width10,),
                          Text("Facebook", style:TextStyle(fontSize:dimensions.font20-4),)
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
                      
                      padding:const  EdgeInsets.all(10.0),
                      child:   Row(
                        children: [
                          Icon(FlutterIcons.twitter_ant, size: dimensions.icon24+6,),
                          SizedBox(width: dimensions.width10,),
                          Text("Twitter      ", style:TextStyle(fontSize: dimensions.font20-4),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
               SizedBox(height:dimensions.height10+4 ,),


              //! text mtaa terms and policy
            
             Padding(
               padding:  EdgeInsets.only(left:dimensions.LRpadmarg30+5, top: dimensions.TBpadmarg10,right: dimensions.LRpadmarg30 ),
               child: RichText(text: TextSpan(text:  "By signing up you agree to our  ", style: TextStyle(color: Colors.grey[400], fontSize: dimensions.font20-5),
                 children:const  [
                  TextSpan(text: "Terms of Use", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(text: " and "),
                   TextSpan(text: "Privacy Policy", style: TextStyle(decoration: TextDecoration.underline, color: Colors.black, fontWeight: FontWeight.bold)),
               
               
               
                 ]),
                
                
                ),
             ),
          
          
            
            
          
          
             
          
          
          
                   
          
          ]),
        ),
      ),
    ));
  }
}