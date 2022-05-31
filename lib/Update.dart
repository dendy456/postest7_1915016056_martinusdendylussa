import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest7_1915016056_martinusdendylussa/FireStoreController.dart';
import 'package:postest7_1915016056_martinusdendylussa/TextController.dart';
import 'Home.dart';

class Update extends StatelessWidget {
  final String id;

  Update(this.id);

  @override
  Widget build(BuildContext context) {
    TextController tc = Get.put(TextController());
    FireStoreController fsc = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Data"),
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
                  fsc.users.value.doc(id).update({
                    'name': tc.namaCtrl.text,
                    'age': int.tryParse(tc.umurCtrl.text) ?? 1
                  });
                },
                child: Text('Update'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
