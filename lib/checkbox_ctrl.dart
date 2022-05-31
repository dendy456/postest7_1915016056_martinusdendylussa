import 'package:get/get.dart';

class SyaratController extends GetxController {

  var setuju = false.obs;
  
  onChanged(bool? value) {
    setuju(value);
  }
}
