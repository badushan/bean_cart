import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt initialCount = 1.obs;
  RxInt itemprice = 42.obs;
  int get totalprice => initialCount.value * itemprice.value;

  void increment() {
    initialCount++;
  }

  void decrement() {
    if (initialCount >= 2) {
      initialCount--;
    }
  }

  var initialCount1 = 1.obs;
  RxInt itemprice1 = 60.obs;
  int get totalprice1 => initialCount1.value * itemprice1.value;

  void increment1() {
    initialCount1++;
  }

  void decrement1() {
    if (initialCount1 >= 2) {
      initialCount1--;
    }
  }
}
