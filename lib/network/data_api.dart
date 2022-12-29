import 'package:nedratasknewjob/network/abstract_json_resource.dart';
import 'package:nedratasknewjob/network/api_manager.dart';

import 'consts.dart';
import 'model/my_data_model.dart';

class DataAPI extends ApiManager{
  @override
  String apiUrl() {
return APIApp.baseUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
   return MyDataModel.fromJson(data);
  }

}