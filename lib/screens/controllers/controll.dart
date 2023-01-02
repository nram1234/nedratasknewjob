import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../network/data_api.dart';
import '../../network/model/my_data_model.dart';

class Home1Controller extends GetxController
{
  ScrollController scrollController = ScrollController();
  DataAPI dataAPI=DataAPI();
  MyDataModel? dataModel;
  List<Results>myDataList=[];
  getDataFromAPI(){

    dataAPI.getData().then((value) {
        dataModel=value as MyDataModel;
      myDataList.clear();
      myDataList.addAll(dataModel?.results??[]);
      update();
    });
  }

  getInvData(){
    if( dataModel!.next==null||(dataModel?.next?.trim().isNotEmpty??false)){
      dataAPI.getpaginationData(url: dataModel!.next!).then((value) {
          dataModel=value as MyDataModel;

        myDataList.addAll(dataModel?.results??[]);
        update();
      });
    }

  }

Future pullToRefresh()async{
  getDataFromAPI();
}
  @override
  void onInit() {
    super.onInit();
    getDataFromAPI();
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels == 0)
          print('List scroll at top');
        else {
          getInvData();
        }
      }
    });
  }

changeColor(index){
  myDataList[index].backColor =!myDataList[index].backColor;
  update();

}

}