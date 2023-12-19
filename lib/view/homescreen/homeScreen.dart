import 'package:eshop/controllers/homeController.dart';
import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/gridview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 17),
              child: Row(
                children: [
                  Container(
                    // scanner qr icon
                   height: dimensions.width20*3-5,
                    width: dimensions.width20*3-5,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),

                      // color: const Color.fromRGBO(248, 248, 248,10),
                      borderRadius: BorderRadius.circular(dimensions.radius10),
                      image: const DecorationImage(
                        image: AssetImage('images/qr.png'),
                      ),
                    ),
                  ),
                   SizedBox(
                    width: dimensions.width20*2,
                  ),
                  GestureDetector(
                    onTap: () {
                      //!
                      
                      Get.find<HomeController>().changeManWoman(false);





                    },
                    child: GetBuilder<HomeController>(
                      builder: (controller1){
                        return Container(
                       height: dimensions.width20*3-5,
                      width: dimensions.width30*3,
                      decoration: BoxDecoration(
                        color: controller1.iswoman? Colors.white: Colors.black,
                        borderRadius: BorderRadius.circular(dimensions.radius10),
                      ),
                      child:  Center(
                          child: Text(
                        "MAN",
                        style: TextStyle(color:controller1.iswoman? Colors.grey: Colors.white, fontSize: dimensions.font20-4),
                         )),
                        ); 
                      })
                  ),
                   SizedBox(
                    width: dimensions.width10,
                  ),
                  GestureDetector(
                    onTap: () {
                      //!
                      print("qkjdq");
                     
                      Get.find<HomeController>().changeManWoman(true);
                   
                    },
                    child: GetBuilder<HomeController>(
                      builder: (controller) {
                        return Container(
                        height: dimensions.width20*3-5,
                        width: dimensions.width30*3,
                        decoration: BoxDecoration(
                         color:controller.iswoman? Colors.black: Colors.white,
                          borderRadius: BorderRadius.circular(dimensions.radius10),
                        ),
                        child:  Center(
                            child: Text(
                          "WOMAN",
                          style: TextStyle(color: controller.iswoman ? Colors.white: Colors.grey, fontSize: 15),
                        )),
                      );
                      },
                      
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: dimensions.width20*3-5,
                    width: dimensions.width20*3-5,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(dimensions.radius10),
                    ),
                    child:  Icon(
                      Icons.search_rounded,
                      size: dimensions.icon24*1.5,
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
            ),

            //! container 1
            SizedBox(
              height: dimensions.height20 * 2,
            ),

            Container(
              height: dimensions.height20 * 12,
              width: dimensions.width30 * 12,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(dimensions.radius20),
                  image: const DecorationImage(
                      image: AssetImage("images/conta.jpeg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: dimensions.height20 * 4,
                      left: dimensions.width30,
                      child: Text(
                        "BRACE YOURSELF!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: dimensions.font20),
                      )),
                  Positioned(
                      top: dimensions.height20 * 5.5,
                      left: dimensions.width30,
                      child: Text(
                        "GET YOURS!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: dimensions.font20),
                      )),
                  Positioned(
                      top: dimensions.height20 * 8,
                      left: dimensions.width30,
                      child: Container(
                        height: dimensions.height20*3-5,
                        width: dimensions.width30*4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(246, 88, 36, 1),
                          borderRadius:
                              BorderRadius.circular(dimensions.radius10),
                        ),
                        child: Center(
                          child: Text(
                            "SHOP NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: dimensions.font20 - 4),
                          ),
                        ),
                      ))
                ],
              ),
            ),
             SizedBox(
              height: dimensions.height10/2,
            ),
            // list view
            SizedBox(
              height: dimensions.height20*3,
              width: dimensions.width,
              child: GetBuilder<HomeController>(
                builder: (controller2){
                  return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller2.categoryList.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.find<HomeController>().letindexChange(index);
                        },
                        child: Container(
                          height: dimensions.height20*3,
                          width: dimensions.width30*5,
                          decoration: BoxDecoration(
                            color : controller2.selectedIndex == index ? Colors.black: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(dimensions.radius10),
                          ),
                          child: Center(
                            child: Text(controller2.categoryList[index], 
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              color: controller2.selectedIndex == index ? Colors.white: Colors.black,

                              
                              ),)),
                        ),
                      ),
                    );
                  });
                })
            ), 
             SizedBox(
              height: dimensions.height20,
            ),

            SizedBox(
              height: dimensions.height20*16.5,
              width: dimensions.width,
              child: GetBuilder<HomeController>(builder: (controller3) {
                return GridView.builder(
              
                itemCount: controller3.listproduct.length,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: dimensions.height20*15,
                  crossAxisCount: 2),
                
                 itemBuilder: (_, index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: gridView(price: controller3.listproduct[index].price, description: controller3.listproduct[index].title, image: controller3.listproduct[index].image),
                   );
                 });
              },)
            )

           





          ],
        ),
      ),
    );
  }
}
