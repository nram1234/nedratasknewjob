
import 'package:get/get.dart';

import '../controllers/controll.dart';

class Home1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home1Controller()) ;


  }
}
