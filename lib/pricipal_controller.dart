import 'package:get/get.dart';

class PricipalController extends GetxController {
  RxBool isEnableSwitch = false.obs;
  RxBool isVisibility1 = false.obs;
  RxBool isVisibility2 = true.obs;

  changeValueSwitch(bool value) {
    isEnableSwitch.value = value;
    isVisibility1.value = !isVisibility1.value;
    isVisibility2.value = !isVisibility2.value;
  }


  RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() {
    on.value = on.value ? false : true;
    isVisibility1.value = !isVisibility1.value;
    isVisibility2.value = !isVisibility2.value;
  }
}
