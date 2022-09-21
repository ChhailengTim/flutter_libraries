import 'package:get/get.dart';

void routeToNamed({required String routeName, dynamic arguments}) async {
  await Get.toNamed(routeName, arguments: arguments);
}

void routeBack() {
  Get.back();
}

void routeTo(dynamic page) {
  Get.to(page);
}

void routeOffAllNamed({required String routeName}) async {
  await Get.offAllNamed(routeName);
}

void routeOffAll() async {
  // await Get.offAll(page);
}
