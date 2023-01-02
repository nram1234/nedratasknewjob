import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/controll.dart';

class HomeScreen extends GetView<Home1Controller> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GetBuilder<Home1Controller>(builder: (logic) {
            return RefreshIndicator(
              onRefresh: logic.pullToRefresh,
              child: ListView.builder(
                  controller: logic.scrollController,
                  itemCount: logic.myDataList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        logic.changeColor(index);
                      },
                      child: Card(
                        color: logic.myDataList[index].backColor
                            ? Colors.greenAccent
                            : Colors.white,
                        elevation: 8,
                        child: Column(children: [
                          Text(logic.myDataList[index].name!),
                          Text(logic.myDataList[index].language!),
                          Text(logic.myDataList[index].classification!),
                          Text(logic.myDataList[index].created!),
                          Text(logic.myDataList[index].skinColors!)
                        ]),
                      ),
                    );
                  }),
            );
          }),
        ),
      ),
    );
  }
}
abstract class NNN{
  int? iii;
  ggg();
  ggg2();
}

class SSS{
  int? pppp;
  int? pppp2;
  int? pppp3;
}

 class CC extends SSS{

 }

class LLL implements SSS{
  @override
  int? pppp;

  @override
  int? pppp2;

  @override
  int? pppp3;

}