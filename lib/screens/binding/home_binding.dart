
import 'package:get/get.dart';

import '../controllers/controll.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController()) ;


  }
}
