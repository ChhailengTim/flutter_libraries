import 'package:get/get.dart';

void routeToNamed(
    {required String routeName, Map<String, String>? parameters}) async {
  await Get.toNamed(routeName, parameters: parameters);
}

void routeBack() {
  Get.back();
}

void routeTo() {
  //Get.to();
}

void routeOffAllNamed({required String routeName}) async {
  await Get.offAllNamed(routeName);
}

void routeOffAll() async {
  // await Get.offAll(page);
}
