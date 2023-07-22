import 'package:flutter/material.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

import 'constants.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header("Experiences"),
            Container(
              padding: EdgeInsets.all(40),
              color: primaryColor,
              child: const Column(
                children: [
                  Text(
                    "Experiences",
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                        child: Text(
                          "MM/YYYY",
                          style: TextStyle(color: Colors.transparent),
                        ),
                      ),
                    ),
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
    Widget date = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text("MM/YYYY"),
      ),
    );
    List<String> skills = [
      "Skill",
      "Skill",
      "Skill",
      "Skill",
      "Skill",
    ];
    return Stack(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              date,
              Container(
                width: 5,
                color: primaryColor,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: skills.map((e) {
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 5, 15, 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Nulla tortor facilisis vitae neque viverra felis, sagittis sem quis. Ut vitae molestie etiam ut. Felis erat egestas nisi, lacinia amet sit iaculis. Eget gravida faucibus consectetur pharetra, justo elit. Tellus nec est nunc nibh erat semper accumsan pellentesque. Volutpat et tristique cursus non arcu vitae. Porttitor proin sociis pretium gravida nulla. Blandit nulla a egestas posuere urna nunc donec nibh. Id sit et gravida at rhoncus. Lobortis dignissim arcu nisl at velit netus.",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Text(
                            "Read More >",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          textColor: Colors.black,
                          color: secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.5),
                child: Text(
                  "MM/YYYY",
                  style: TextStyle(color: Colors.transparent),
                ),
              ),
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
        Positioned.directional(
          textDirection: TextDirection.ltr,
          start: 0.0,
          end: 0.0,
          bottom: 0.0,
          child: Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: Text(
                    "MM/YYYY",
                  ),
                ),
              ),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
