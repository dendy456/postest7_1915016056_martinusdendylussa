import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:postest7_1915016056_martinusdendylussa/TextController.dart';
import 'package:postest7_1915016056_martinusdendylussa/Add.dart';
import 'package:postest7_1915016056_martinusdendylussa/FireStoreController.dart';
import 'package:postest7_1915016056_martinusdendylussa/item_card.dart';
import 'package:get/get.dart';
import 'Update.dart';
import 'mainPage.dart';
import 'splash_screen.dart';
import 'checkbox_ctrl.dart';
import 'mainPage.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  Widget myLogo() {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/kail1.png"))));
  }

  Widget myContainer() {
    return Container(
      width: 30, //MediaQuery.of(context).size.width,
      height: 30,
      color: Colors.amber,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              children: [
                myLogo(),
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(87, 120, 192, 251),
                      ),
                  child: Column(
                    children: [
                      Image.asset("asset/font2.png"),
                      Text(
                        'Martinus Dendy Lussa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Welcome To Kail Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10, bottom: 25),
                  child: Text(
                    'Segala Kebutuhan Mancing Anda Terpenuhi Semuanya Di sini, Bagaikan Surga Bagi Para Angler... ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Get.to(HalData());
                  },
                  child: const Text("Pesan Sekarang"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  FireStoreController fsc = Get.put(FireStoreController());

  Widget myLogo() {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/kail1.png"))));
  }

  Widget myContainer() {
    return Container(
      width: 30, //MediaQuery.of(context).size.width,
      height: 30,
      color: Colors.amber,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              children: [
                myLogo(),
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(87, 120, 192, 251),
                      ),
                  child: Column(
                    children: [
                      Image.asset("asset/font2.png"),
                      Text(
                        'Martinus Dendy Lussa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Welcome To Kail Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10, bottom: 25),
                  child: Text(
                    'Segala Kebutuhan Mancing Anda Terpenuhi Semuanya Di sini, Bagaikan Surga Bagi Para Angler... ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Get.to(HalData());
                  },
                  child: const Text("Pesan Sekarang"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => HalData())),
        child: Icon(Icons.add),
      ),
    );
  }
}
