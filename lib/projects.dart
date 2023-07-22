import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header("Projects"),
            Container(
              padding: EdgeInsets.all(40),
              color: primaryColor,
              child: const Column(
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 56,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Quam viverra facilisis diam aliquet pellentesque cras imperdiet quis. Ipsum, tristique feugiat purus integer vestibulum tellus at ac urna. Ac egestas enim lobortis maecenas. Rhoncus amet aenean nec enim nec diam. Est arcu quis habitant risus. Sit arcu amet vitae fringilla convallis est. Arcu ornare fermentum quam ultrices dis volutpat.",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return createListTile(context, index);
                },
                separatorBuilder: (context, index) => Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Container(
                      width: 5,
                      height: 15,
                      color: primaryColor,
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget createListTile(BuildContext context, int index) {
    List<String> skills = [
      "Skill",
      "Skill",
      "Skill",
      "Skill",
      "Skill",
    ];
    if (index % 2 == 0) {
      return Stack(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Carousel(),
                  ),
                ),
                Container(
                  width: 5,
                  color: primaryColor,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Nulla tortor facilisis vitae neque viverra felis, sagittis sem quis. Ut vitae molestie etiam ut. Felis erat egestas nisi, lacinia amet sit iaculis. Eget gravida faucibus consectetur pharetra, justo elit. Tellus nec est nunc nibh erat semper accumsan pellentesque. Volutpat et tristique cursus non arcu vitae. Porttitor proin sociis pretium gravida nulla. Blandit nulla a egestas posuere urna nunc donec nibh. Id sit et gravida at rhoncus. Lobortis dignissim arcu nisl at velit netus.",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: skills.map((e) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: secondaryColor,
                                ),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.075, 0.0),
            child: Text("MM/YYYY"),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            start: 0.0,
            end: 0.0,
            bottom: 0.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.075, 0.0),
                  child: Text("DD/YYYY"),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Nulla tortor facilisis vitae neque viverra felis, sagittis sem quis. Ut vitae molestie etiam ut. Felis erat egestas nisi, lacinia amet sit iaculis. Eget gravida faucibus consectetur pharetra, justo elit. Tellus nec est nunc nibh erat semper accumsan pellentesque. Volutpat et tristique cursus non arcu vitae. Porttitor proin sociis pretium gravida nulla. Blandit nulla a egestas posuere urna nunc donec nibh. Id sit et gravida at rhoncus. Lobortis dignissim arcu nisl at velit netus.",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: skills.map((e) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: secondaryColor,
                                ),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 5,
                  color: primaryColor,
                ),
                Expanded(
                  child: Container(
                    child: Carousel(),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.075, 0.0),
            child: Text("MM/YYYY"),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            start: 0.0,
            end: 0.0,
            bottom: 0.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.075, 0.0),
                  child: Text("DD/YYYY"),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<String> imgList = [
    "lib/images/image3.png",
    "lib/images/image3.png",
    "lib/images/image3.png",
    "lib/images/image3.png",
    "lib/images/image3.png",
  ];
  CarouselController _controller = new CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> imageSliders = imgList.map((e) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: Image.asset(e).image,
        )),
      );
    }).toList();

    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? primaryColor
                          : secondaryColor)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
