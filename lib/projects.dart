import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

import 'Models/project_model.dart';

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
                    "Welcome to my Projects page, where innovation meets passion! As a 3rd year Computer Science student and software developer, I take immense pride in showcasing a diverse range of projects that exemplify my skills, creativity, and dedication to the world of technology. From web applications to mobile solutions and everything in between, each project represents a unique journey of problem-solving and learning. Join me on this immersive tour of my accomplishments, where you'll witness the fusion of cutting-edge technologies and my unwavering enthusiasm to make a meaningful impact through code. Get ready to explore a collection of projects that embody my commitment to excellence in the realm of software development.",
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
                itemCount: projects.length,
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
    Project current = projects.elementAt(index);
    if (index % 2 == 0) {
      return Stack(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Carousel(index),
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
                          projects.elementAt(index).name,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            projects.elementAt(index).mediumSummary,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:
                                  projects.elementAt(index).skills.map((e) {
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
            child: Text(projects.elementAt(index).end),
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
                  child: Text(projects.elementAt(index).start),
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
                          current.name,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            current.mediumSummary,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: current.skills.map((e) {
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
                  child: Carousel(index),
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
            alignment: Alignment(0.075, 0.0),
            child: Text(current.end),
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
                  alignment: Alignment(0.075, 0.0),
                  child: Text(current.start),
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
  int index;
  Carousel(int this.index, {Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState(index);
}

class _CarouselState extends State<Carousel> {
  int index;
  late List<String> imgList;
  CarouselController _controller = new CarouselController();
  int _current = 0;

  _CarouselState(int this.index);

  @override
  void initState() {
    imgList = projects.elementAt(index).images;
    super.initState();
  }

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
