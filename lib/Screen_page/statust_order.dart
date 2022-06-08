import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class orderstatus extends StatefulWidget {
  orderstatus({
    Key? key,
  }) : super(key: key);
  @override
  State<orderstatus> createState() => _orderstatusState();
}

late final Controller controlle = Get.find();
late final String name;
late final int price;
late final int index;
String status = 'pending';
bool status1 = true;
bool status2 = false;
bool status3 = false;
bool status4 = false;
bool status5 = false;

class _orderstatusState extends State<orderstatus> {
  late final String name;
  late final int price;
  late final int index;
  @override
  Widget build(BuildContext context) {
    double Sizeconfig = MediaQuery.of(context).size.height * 0.1;
    double screen = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    if (status == 'pending2') {
      setState(() {
        status2 = true;
      });
    } else {
      if (status == 'pending3') {
        setState(() {
          status2 = true;
          status3 = true;
        });
      } else {
        if (status == 'pending4') {
          setState(() {
            status3 = true;
            status4 = true;
          });
        } else {
          if (status == 'pending5') {
            setState(() {
              status4 = true;
              status5 = true;
            });
          }
        }
      }
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF293275)),
          title: Center(
            child: GestureDetector(
              child: Image.asset(
                'images/PURRER.png',
                width: 200,
                height: 40,
              ),
              onTap: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => home_scree());
                Navigator.of(context).push(materialPageRoute);
              },
            ),
          ),
          actions: [
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    if (status.toString() == 'pending') {
                      setState(() {
                        status = 'pending2';
                      });
                    } else {
                      if (status.toString() == 'pending2') {
                        setState(() {
                          status = 'pending3';
                        });
                      } else {
                        if (status.toString() == 'pending3') {
                          setState(() {
                            status = 'pending4';
                          });
                        } else {
                          if (status.toString() == 'pending4') {
                            setState(() {
                              status = 'pending5';
                            });
                          }
                        }
                      }
                    }
                  },
                  child: Text('Status')),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: Sizeconfig * 0.01,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
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
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ສະຖານະລາຍການສັ່ງຊື້",
                            style: TextStyle(
                                color: Color(0xFF293275),
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 25.0)),
                          Column(
                            children: [
                              Text("ລະຫັດການສັ່ງຊື້",
                                  style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                              Text("ພຸດ, 4/5/2022 12:49",
                                  style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      margin: EdgeInsets.only(bottom: Sizeconfig),
                      child: Column(
                        children: <Widget>[
                          status1 == true
                              ? timelineRow("ກົດຢືນຢັນ", '')
                              : timelineRow1("ກົດຢືນຢັນ", ''),
                          status2 == true
                              ? timelineRow("ກຳລັງຈັດສົ່ງ", '')
                              : timelineRow1("ກຳລັງຈັດສົ່ງ", ''),
                          status3 == true
                              ? timelineRow("ສົ່ງຮອດແລ້ວ", "")
                              : timelineRow1("ສົ່ງຮອດແລ້ວ", ""),
                          status4 == true
                              ? timelineRow("ຢື່ນຢັນການສົ່ງ", "")
                              : timelineRow1("ຢື່ນຢັນການສົ່ງ", ""),
                          status5 == true
                              ? timelineRow("ສຳເລັດການສົ່ງ", "")
                              : timelineRow1("ສຳເລັດການສົ່ງ", ""),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Widget timelineRow(String title, String subTile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 18,
              height: 18,
              decoration: new BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Text(""),
            ),
            Container(
              width: 3,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.green,
                shape: BoxShape.rectangle,
              ),
              child: Text(""),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 9,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${title}\n ${subTile}',
                style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 14,
                    color: Colors.black54)),
          ],
        ),
      ),
    ],
  );
}

Widget timelineRow1(String title, String subTile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 18,
              height: 18,
              decoration: new BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Text(""),
            ),
            Container(
              width: 3,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
              ),
              child: Text(""),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 9,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${title}\n ${subTile}',
                style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 14,
                    color: Colors.black54)),
          ],
        ),
      ),
    ],
  );
}

Widget timelineLastRow(String title, String subTile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 18,
              height: 18,
              decoration: new BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Text(""),
            ),
            Container(
              width: 3,
              height: 20,
              decoration: new BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              child: Text(""),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${title}\n ${subTile}',
                style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 14,
                    color: Colors.black54)),
          ],
        ),
      ),
    ],
  );
}
