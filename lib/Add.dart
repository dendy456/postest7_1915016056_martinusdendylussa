import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'checkbox_ctrl.dart';
import 'mainPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:postest7_1915016056_martinusdendylussa/FireStoreController.dart';
import 'package:postest7_1915016056_martinusdendylussa/TextController.dart';

class TodoPage extends StatelessWidget {
  TodoPage({Key? key, this.isUpdate = false}) : super(key: key);

  bool isUpdate;

  @override
  Widget build(BuildContext context) {
    TextController tc = Get.put(TextController());
    FireStoreController fsc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.isUpdate ? 'Update' : 'Tambah'} Data"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              TextField(
                controller: tc.namaCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama",
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: tc.umurCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Umur",
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  fsc.users.value.add({
                    'name': tc.namaCtrl.text,
                    'age': int.tryParse(tc.umurCtrl.text) ?? 1
                  });
                },
                child: Text(this.isUpdate ? 'Update' : 'Tambah'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HalData extends StatelessWidget {
  HalData({Key? key}) : super(key: key);
  bool setuju = false;
  final TextController data = Get.put(TextController());
  final SyaratController syarat = Get.put(SyaratController());
  FireStoreController fsc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KAIL STORE"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset("asset/font2.png"),
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
            ),
            ListTile(
              title: Text("Beranda"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/font2.png'))),
                ),
                Text(
                    'Silahkan untuk mengisi data sebelum melakukan pembelian '),
                Text('di toko ini...'),
                const SizedBox(height: 20),
                TextField(
                  controller: data.namaCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Pembeli",
                    hintText: 'Isi Nama Anda',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: data.umurCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Umur Pembeli",
                    hintText: 'Cth. 17',
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                      "Saya menyetujui syarat, ketentuan, dan privasi Toko"),
                  leading: Obx(
                    () => Checkbox(
                      value: syarat.setuju.value,
                      onChanged: (value) {
                        syarat.setuju(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                fsc.users.value.add({
                  'name': data.namaCtrl.text,
                  'age': int.tryParse(data.umurCtrl.text) ?? 1
                });
              },
              child: const Text("Konfirmasi"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(mainPages()), // Get.to() mirip Navigator.push()
        child: Text("->"),
      ),
    );
  }
}
