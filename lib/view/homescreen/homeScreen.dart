import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/utils/gridview.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoryList = [
    "NEW IN",
    "CLOTHING",
    "NEW IN ",
    "KING & QUEEN ",
    "SHOES & BAGS",
    "ACCESSORIES",
  ];
  List listproduct=[1,2,2,2,2,2];
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
                    height: 50,
                    width: 50,
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
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(dimensions.radius10),
                    ),
                    child: const Center(
                        child: Text(
                      "MAN",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(dimensions.radius10),
                    ),
                    child: const Center(
                        child: Text(
                      "WOMAN",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(dimensions.radius10),
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      size: 40,
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
                        height: 50,
                        width: 120,
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
            const SizedBox(
              height: 5,
            ),
            // list view
            SizedBox(
              height: 60,
              width: dimensions.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius:
                              BorderRadius.circular(dimensions.radius10),
                        ),
                        child: Center(
                          child: Text(categoryList[index], style: const TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                    );
                  }),
            ), 
            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 330,
              width: dimensions.width,
              child: GridView.builder(
              
                itemCount: listproduct.length,
                gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300,
                  crossAxisCount: 2),
                
                 itemBuilder: (_, index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: gridView(price: 140.05, description: "jbsdfdfsdfkjsdqdqsjkds"),
                   );
                 }),
            )

           





          ],
        ),
      ),
    );
  }
}
