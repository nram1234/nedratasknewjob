
import 'package:get/get.dart';
import 'package:nedratasknewjob/screens/home/controller_home_screen/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController()) ;


  }
}
