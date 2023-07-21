import 'package:flutter/material.dart';
import 'package:my_website/footer.dart';
import 'package:my_website/header.dart';

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
                const Text(
                  "Project 1",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("lib/images/image3.png"),
                ),
                const Text(
                  "Dignissim condimentum fringilla id porttitor feugiat vel. Sapien amet volutpat et felis, pulvinar vestibulum ut. Purus sit egestas volutpat arcu, mattis at ut eget.",
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
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
                  ],
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
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Projects",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 72,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.67,
                    padding: const EdgeInsets.all(10),
                    child: PageView.builder(
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
                        fontSize: 30,
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
                            const Text(
                              "Habitant rutrum vel nec fringilla leo tincidunt. Commodo ac at vestibulum quisque tortor varius. Consectetur nunc auctor proin mauris ac scelerisque nullam elementum. Arcu sed morbi amet cras accumsan cum. Pretium tincidunt integer accumsan, blandit ultrices eget varius lectus. Sapien aliquam nisl ullamcorper risus. Ipsum tortor quam eget sem nec, neque odio.",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.clip,
                              softWrap: true,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              onPressed: () {
                                return null;
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
