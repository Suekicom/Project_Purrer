import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/Screen_page/statust_order.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:app_purrer/Service/controller_buynow.dart';
import 'package:app_purrer/Service/controller_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class confirm_order extends StatefulWidget {
  confirm_order({Key? key}) : super(key: key);

  @override
  State<confirm_order> createState() => _confirm_orderState();
}

class _confirm_orderState extends State<confirm_order> {
  late final Controller controlle = Get.find();
  late final Controllerbuynow controllerbuynow = Get.put(Controllerbuynow());
  Controllerorder controllerorder = Get.put(Controllerorder());
  late final String name;
  late final int index;

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF293275),),
          height: 60.0,
               
                      child: TextButton(
                          onPressed: () {
                            MaterialPageRoute materialPageRoute =
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        home_scree());
                            Navigator.of(context).push(materialPageRoute);
                          
                            controllerorder.addProduct(
                              controllerbuynow.product.keys.toList()[0],
                            );
                            controllerbuynow.clear();
                          },
                          child: Text('ສັ່ງຊື້',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)))),
          
        ),
      ),
        appBar: AppBar(
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF293275)),
          backgroundColor: Colors.white,
          title: Center(
            child: Image.asset(
              'images/PURRER.png',
              width: 200,
              height: 40,
            ),
          ),
          // actions: [
          //   Stack(children: [
          //     IconButton(
          //         onPressed: () {
          //             MaterialPageRoute materialPageRoute = MaterialPageRoute(
          //               builder: (BuildContext context) => orderstatus());
          //           Navigator.of(context).push(materialPageRoute);
          //         },
          //         icon: Icon(Icons.heart_broken)),
          //     Positioned(
          //         left: 23,
          //         top: 10,
          //         child: Container(
          //           alignment: Alignment.center,
          //           width: 15,
          //           height: 15,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.red),
          //           child: Text(
          //             controlle.product.length.toString(),
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ))
          //   ]),
          // ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 24.0, height: 20.0),
                      Text("ຢືນຢັນການສັ່ງຊື້",
                          style: TextStyle(
                              color: Color(0xFF293275),
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ທີ່ຢູ່ຈັດສົ່ງ",
                            style: TextStyle(
                                color: Color(0xFF293275),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            label: Text(
                              'ແກ້ໄຂ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: screen,
                        height: screenh * 0.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25.0)),
                      Text("ສີເມືອງ, ຮ່ອມ 02",
                          style: TextStyle(
                              color: Color(0xFF293275),
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ວິທີຈ່າຍເງິນ",
                            style: TextStyle(
                                color: Color(0xFF293275),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            label: Text(
                              'ແກ້ໄຂ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )),
                      ],
                    )),
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset('icon/Icon ionic-md-cash@2x.png',
                            height: 13, width: 18),
                        label: Text('ຈ່າຍເງິນສົດ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF293275)))),
                  ],
                ),
                SizedBox(height: 190.0),
                Column(
                  children: List.generate(
                      controllerbuynow.product.length != 0
                          ? controllerbuynow.product.length
                          : controlle.product.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //  color: Colors.amber,
                                  child: Row(
                                    children: [
                                      controllerbuynow.product.length != 0
                                          ? Text(
                                              controllerbuynow
                                                  .productList[index].name
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xFF5D5D5D),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold))
                                          : Text(
                                              controlle.productList[index].name
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xFF5D5D5D),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                      SizedBox(width: 10),
                                      controllerbuynow.product.length != 0
                                          ? Text(
                                              controllerbuynow.product.values
                                                  .toList()[index]
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF5D5D5D)))
                                          : Text(
                                              controlle.product.values
                                                  .toList()[index]
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ),
                                    ],
                                  ),
                                ),
                                controllerbuynow.product.length != 0
                                    ? Text(
                                        '${controllerbuynow.total}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 169, 10, 10)),
                                      )
                                    : Text(
                                        '${controlle.productList[index].price!.toInt() * int.parse(controlle.product.values.toList()[index].toString())}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5D5D5D)),
                                      ),
                              ],
                            ),
                          )),
                ),

                // Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           SizedBox(
                //                             height: 70,
                //                             width: 5.0,
                //                           ),
                //                           Text(
                //                               controlle.productList[index].name
                //                                   .toString(),
                //                               style: TextStyle(
                //                                   color: Color(0xFF5D5D5D),
                //                                   fontSize: 15,
                //                                   fontWeight: FontWeight.bold)),
                //                           SizedBox(width: 5.0),
                //                           Text(
                //                               '${controlle.productList[index].price!.toInt()}ກິບ',
                //                               style: TextStyle(
                //                                   fontWeight: FontWeight.bold,
                //                                   color: Color(0xFF293275),
                //                                   fontSize: 18))
                //                         ]),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ລວມມູນຄ່າ:",
                          style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      controllerbuynow.product.length != 0
                          ? Text(
                              '${controllerbuynow.total}ກີບ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )
                          : Text(
                              '${controlle.total}ກີບ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )
                    ],
                  ),
                ),

             
              ],
            ),
          ),
        ));
  }
}
