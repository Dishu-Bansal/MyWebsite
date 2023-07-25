import 'package:flutter/material.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

import 'Models/experiences_model.dart';
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
                    "Step into the realm of my Experiences page, where my journey as a Computer Science student and software developer comes to life. Here, I invite you to explore the milestones, challenges, and triumphs that have shaped my professional growth. From internships to personal projects, each experience has been a stepping stone towards honing my skills and nurturing a deep passion for technology. Join me as I share the invaluable lessons learned, the collaborations that have enriched my perspective, and the moments that have fueled my ambition to excel in the dynamic world of software development. Get ready to witness the evolution of my career and the dedication that fuels my drive to create innovative solutions that make a difference.",
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
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return createListTile(context, index);
                },
                separatorBuilder: (context, index) => Row(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4.25, 0, 0, 0),
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
    Experience current = experiences.elementAt(index);
    Widget date = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          current.end,
          style: TextStyle(color: Colors.transparent),
        ),
      ),
    );
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
                            current.name,
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
                                  children: current.skills.map((e) {
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
                        height: 5,
                      ),
                      Text(
                        current.company,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: experiences.elementAt(index).points.map((e) {
                          return Text(
                            "\u2022 " + e,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.5),
                child: Text(current.end),
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
                    current.start,
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
