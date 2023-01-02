
import 'package:dio/dio.dart'as di;
import 'package:get/get.dart';




class AppInterCepter extends di.Interceptor{


  @override
  void onRequest(di.RequestOptions options,di. RequestInterceptorHandler handler) {
    options.headers[ "authorization"]=  "Bearer 96|oSR2i3QienQAFIBhucG3mUNSMizhBdLdnk0EcKwI";

super.onRequest(options, handler);

  }

  @override
  void onError(di.DioError err,di. ErrorInterceptorHandler handler) {
print("i get err");
print("*"*100);
print(err.toString());
print("*"*100);
Get.snackbar("err",err.message );

  }

  @override
  void  onResponse(di.Response response,di. ResponseInterceptorHandler handler) {
if(response.statusCode==200||response.statusCode==201){

}else{



  Get.snackbar("err", "message");
}
 return super.onResponse(response, handler) ;}
}