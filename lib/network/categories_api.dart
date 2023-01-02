



import 'abstract_json_resource.dart';
import 'api_manager.dart';
import 'home2model/categories_model.dart';

class Categories2Api extends ApiManager{
  @override
  String apiUrl() {
    return "https://pokfit.qa/api/v1/challenges/categories/list";
  }

  @override
  AbstractJsonResource fromJson(data) {
    return CategoriesModel.fromJson(data);
  }

}