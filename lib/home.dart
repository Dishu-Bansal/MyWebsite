import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/experiences.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';
import 'package:my_website/projects.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = new PageController();
  int currentpage = 0;

  @override
  initState() {
    super.initState();
    controller = PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  builder(int index) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Card(
          margin: const EdgeInsets.all(20.0),
          elevation: 10,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: const Color.fromRGBO(212, 163, 115, 1),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  projects.elementAt(index).name,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("lib/images/image3.png"),
                ),
                Text(
                  projects.elementAt(index).shortSummary,
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.clip,
                ),
                Expanded(child: SizedBox()),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: projects
                        .elementAt(index)
                        .skills
                        .map((e) => Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ))
                        .toList(),
                    /*[
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        child: const Text(
                          "Skill",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        child: const Text(
                          "Skill",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        child: const Text(
                          "Skill",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        child: const Text(
                          "Skill",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],*/
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header("Home"),
            Container(
              color: const Color.fromRGBO(250, 237, 205, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I'm Dishu Bansal",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "I’m a software developer with over two years of experience, and I’m really passionate about AI, ML, cybersecurity, and blockchain. Right now, I’m looking for opportunities in software development, virtual assistance, or data entry.",
                          style: TextStyle(
                            overflow: TextOverflow.clip,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {
                            return null;
                          },
                          color: const Color.fromRGBO(212, 163, 115, 1),
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Text(
                            "Learn More >",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "lib/images/image1.png",
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("lib/images/image2.png").image,
                  opacity: 0.3,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: SizedBox()),
                      const Text(
                        "Projects",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Projects()));
                        },
                        color: secondaryColor,
                        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                        child: const Row(
                          children: [
                            Text(
                              "All",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              ">",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    padding: const EdgeInsets.all(10),
                    child: PageView.builder(
                        itemCount: projects.length,
                        onPageChanged: (value) {
                          setState(() {
                            currentpage = value;
                          });
                        },
                        controller: controller,
                        itemBuilder: (context, index) => builder(index)),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Experiences",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("lib/images/image4.png"),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: const Text(
                                "Embark on a captivating journey through my dynamic career path, shaped by passion and expertise. Explore the mosaic of experiences that have defined my success, from humble beginnings to soaring accomplishments. Witness the lessons learned, skills honed, and dreams pursued, as each milestone paints a canvas of growth and determination. Uncover the insights gained from diverse industries and the collaborations that enriched my perspective. Join me in celebrating the triumphs, challenges, and joy that have woven together to create a truly remarkable career story.",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                                overflow: TextOverflow.clip,
                                softWrap: true,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Experiences()));
                              },
                              color: const Color.fromRGBO(212, 163, 115, 1),
                              padding: const EdgeInsets.all(30),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: const Text(
                                "Explore All",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
