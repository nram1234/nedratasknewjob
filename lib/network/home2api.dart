import 'package:nedratasknewjob/network/abstract_json_resource.dart';
import 'package:nedratasknewjob/network/api_manager.dart';

import 'home2model/home2model.dart';

class Home2Api extends ApiManager{
  @override
  String apiUrl() {
   return "https://pokfit.qa/api/v1/home";
  }

  @override
  AbstractJsonResource fromJson(data) {
 return Home2Model.fromJson(data);
  }

}