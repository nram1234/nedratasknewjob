import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nedratasknewjob/screens/home/controller_home_screen/home_controller.dart';
import 'package:nedratasknewjob/screens/home/widgets/challenges_widget_item.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  final CarouselController _controller = CarouselController();
  List<Widget> imageSliders = [
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 100,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
  ];
  List<Widget> imageSliders2 = [
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
    ChallengesWidgetItem(
        high: 60,
        image:
        "https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0",
        date: "9/12/2023",
        time: "Cycling 6AM - AM"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GetBuilder<HomeController>(builder: (logic) {
            return logic.home2model == null ? Center(
              child: CircularProgressIndicator(),) : Column(children: [
              Container(
                height: 80,
                color: Colors.black45,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.greenAccent),
                        height: 60,
                        width: 60,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("linkia it Qa",
                              style: TextStyle(color: Colors.white)),
                          Text("linkia it Qa",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Spacer(),
                      Icon(size: 30, Icons.search_rounded, color: Colors.white),
                      SizedBox(
                        width: 4,
                      )
                    ],
                  ),
                ),
              ),
           logic.categoriesModel==null?CircularProgressIndicator():   SizedBox(
                height: 99,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: logic.categoriesModel?.data?.length,
                    itemBuilder: (context, pos) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicHeight(
                          child: Row(children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                           child: Image.network(logic.categoriesModel!.data![pos].icon!), ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${logic.categoriesModel?.data?[pos].name}",
                                    style: TextStyle(color: Colors.yellow)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("",
                                    style: TextStyle(color: Colors.yellow)),
                              ],
                            ),
                          ]),
                        ),
                      );
                    }),
              ),
              Container(
                color: Colors.amber,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 86,
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Poks",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              SizedBox(
                                height: 4,
                              ),
                              Text("${logic.home2model?.userSteps}",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 4,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white.withOpacity(.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Today Steps",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              SizedBox(
                                height: 4,
                              ),
                              Text("${logic.home2model?.todaySteps}",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 4,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(.3)),
                              child: Row(children: [
                                Expanded(
                                    flex: 2,
                                    child: Center(
                                        child: Text(
                                          "Insights",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ))),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber.withOpacity(.5)),
                                    child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black45,
                                          size: 30,
                                        )),
                                  ),
                                )
                              ]),
                            )),
                        SizedBox(
                          width: 20,
                        )
                      ]),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 8),
                child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          color: Colors.amber,
                          width: 6,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Challenges",
                          style: TextStyle(fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                        ),
                      ],
                    )),
              ),
              CarouselSlider(
                items: logic.home2model!.challenges!.map((e) {
                  return ChallengesWidgetItem(
                    date: "${ e.createdAt}  ",
                    image: e.image!,
                    time:"${ e.updatedAt}" , high: 70,);
                }).toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  onPageChanged: (int i, CarouselPageChangedReason r) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 8),
                child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          color: Colors.amber,
                          width: 6,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Trainings",
                          style: TextStyle(fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: logic.home2model?.trainings?.length,
                    itemBuilder: (context, pos) {
                      return Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .7,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      logic.home2model!.trainings![pos].image!,
                                    ),
                                    fit: BoxFit.fill)),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.4)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("${logic.home2model!.trainings![pos].createdAt}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                          Text("${logic.home2model!.trainings![pos].startDate}",
                                              style:
                                              TextStyle(color: Colors.white))
                                        ]),
                                    Expanded(
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(10),
                                              color: Colors.white.withOpacity(
                                                  .3)),
                                          child: Row(children: [
                                            Expanded(
                                                flex: 2,
                                                child: Center(
                                                    child: FittedBox(
                                                      fit: BoxFit.fitWidth,
                                                      child: Text(
                                                        "join Now",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                        ),
                                                      ),
                                                    ))),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                    color:
                                                    Colors.white.withOpacity(
                                                        .3)),
                                                child: Center(
                                                    child: Icon(
                                                      Icons.arrow_forward,
                                                      color: Colors.black,
                                                      size: 15,
                                                    )),
                                              ),
                                            )
                                          ]),
                                        ))
                                  ],
                                ),
                              ),
                            )),
                      );
                    }),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 8),
                child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          color: Colors.amber,
                          width: 6,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Shops",
                          style: TextStyle(fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageSliders2.length,
                    itemBuilder: (context, pos) {
                      return Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .7,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(),
                                    )
                                  ],
                                )
                              ],
                            )),
                      );
                    }),
              )
            ]);
          }),
        ),   bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          onTap: (v){},

          showUnselectedLabels: true,showSelectedLabels: true,

          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "????????????????", ),
            BottomNavigationBarItem(
                icon:Icon(Icons.add),
                label: "????????????????"),
            BottomNavigationBarItem(
                icon:Icon(Icons.ac_unit_sharp),
                label: "??????????????"),

          ],
        ),
      ),
      ),
    );
  }
}
