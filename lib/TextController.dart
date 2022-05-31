import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var nama = "".obs;
  var umur = "".obs;

  TextEditingController namaCtrl = TextEditingController();
  TextEditingController umurCtrl = TextEditingController();

  @override
  void onClose() {
    print("Terhapus");
    namaCtrl.dispose();
    umurCtrl.dispose();
    super.onClose();
  }
}
