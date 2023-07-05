import 'package:flutter/material.dart';

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
          color: const Color.fromRGBO(201, 173, 167, 1),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  "Project 1",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("lib/images/image3.png"),
                ),
                const Text(
                  "Dignissim condimentum fringilla id porttitor feugiat vel. Sapien amet volutpat et felis, pulvinar vestibulum ut. Purus sit egestas volutpat arcu, mattis at ut eget.",
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(74, 78, 105, 1),
                      ),
                      child: const Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(74, 78, 105, 1),
                      ),
                      child: const Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(74, 78, 105, 1),
                      ),
                      child: const Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(74, 78, 105, 1),
                      ),
                      child: const Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 237, 205, 1),
        elevation: 0,
        toolbarHeight: 70,
        leading: Container(
          padding: EdgeInsets.all(15),
          child: Image.asset(
            "lib/images/DB.png",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Experience",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Blog",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Contact me",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(250, 237, 205, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "I'm Dishu Bansal",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 72,
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
                      ],
                    ),
                  ),
                  Image.asset("lib/images/image1.png"),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
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
                    padding: EdgeInsets.all(10),
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
          ],
        ),
      ),
    );
  }
}
