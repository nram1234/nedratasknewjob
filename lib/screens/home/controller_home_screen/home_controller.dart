import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../network/categories_api.dart';
import '../../../network/home2api.dart';
import '../../../network/home2model/categories_model.dart';
import '../../../network/home2model/home2model.dart';

class HomeController extends GetxController{

  Home2Api home2api= Home2Api();
  Home2Model? home2model;

  Categories2Api categories2api=Categories2Api();
  CategoriesModel? categoriesModel;
  @override
  void onInit() {
    print("object00000000000000000000000000000000000000000");
    super.onInit();
    home2api.getData().then((value) {
      home2model=value as Home2Model;
print(value);
update();

    });

    categories2api.getData().then((value) {

      categoriesModel=value as CategoriesModel;
update();
    });
  }
}