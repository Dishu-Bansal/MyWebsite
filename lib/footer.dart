import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 237, 205, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(40),
                    child: Image.asset("lib/images/DB.png")),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("2001 - 167 Church St,\nToronto, ON\nM5B 1Y6")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("+1 (647) 616-1501")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                  ),
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                  ),
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                  ),
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                  ),
                  icon: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
