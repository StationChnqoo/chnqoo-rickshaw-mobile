import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rickshaw/constants/mock.dart';
import 'package:rickshaw/constants/truck.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeTrucks extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTrucksState();
  }
}

class HomeTrucksState extends State<HomeTrucks> {
  List<Truck> trucks = [];
  int currentIndex = 0;
  ItemScrollController listView = ItemScrollController();
  late CarouselController swiper;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            // width: double.infinity,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white38, borderRadius: BorderRadius.circular(12)),
            child: ScrollablePositionedList.builder(
                itemScrollController: listView,
                scrollDirection: Axis.horizontal,
                // 可以阻止他的滚动偏移量为负数 --> 有额外的滚动空间
                physics: ClampingScrollPhysics(),
                itemCount: trucks.length,
                // scrollOffsetListener: ScrollOffsetListener.create(
                //     recordProgrammaticScrolls: false),
                itemBuilder: (context, index) {
                  Truck truck = trucks[index];
                  return GestureDetector(
                    child: Container(
                      // decoration: BoxDecoration(color: Colors.amber),
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Center(
                        child: Text(
                          truck.name,
                          style: [
                            TextStyle(color: Colors.black54, fontSize: 14),
                            TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)
                          ][currentIndex == index ? 1 : 0],
                        ),
                      ),
                    ),
                    onTap: () {
                      swiper.animateToPage(index,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut);
                      // swiper.nextPage();
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  );
                }),
          ),
          SizedBox(
            height: 12,
          ),
          trucks.length > 0
              ? Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      Container(
                        child: CarouselSlider.builder(
                          carouselController: swiper,
                          itemCount: trucks.length,
                          options: CarouselOptions(
                            autoPlay: false,
                            viewportFraction: 0.618,
                            height: 120,
                            onPageChanged: (index, reason) {
                              if (reason == CarouselPageChangedReason.manual) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }
                              listView.scrollTo(
                                  index: index,
                                  alignment: 0.5,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.linearToEaseOut);
                            },
                          ),
                          itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) {
                            Truck truck = trucks[itemIndex];
                            return Container(
                              child: CachedNetworkImage(
                                imageUrl: truck.src,
                                height: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        // decoration: BoxDecoration(
                        //     color: Colors.white54,
                        //     borderRadius: BorderRadius.circular(12)),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...trucks[currentIndex]
                                  .size
                                  .asMap()
                                  .entries
                                  .map((e) => Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: Column(
                                          children: [
                                            Text(
                                              e.value.name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black87),
                                            ),
                                            Text(
                                              '${e.value.min}~${e.value.max}${e.value.unit}',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
              : Container(),
        ],
      ),
    );
  }

  initTrucks() {
    List<Truck> _trucks = Mock()
        .initTrucks()
        .map((truckJson) => Truck.fromJson(truckJson))
        .toList();
    setState(() {
      trucks = _trucks;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    swiper = CarouselController();
    initTrucks();
  }

  @override
  void didUpdateWidget(covariant HomeTrucks oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
}
