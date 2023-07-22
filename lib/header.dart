import 'package:flutter/material.dart';
import 'package:my_website/ContactMe.dart';
import 'package:my_website/blog.dart';
import 'package:my_website/experiences.dart';
import 'package:my_website/home.dart';
import 'package:my_website/projects.dart';

class Header extends StatelessWidget {
  String page;
  Header(String this.page, {Key? key}) : super(key: key);

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget createButton(String text, BuildContext context) {
    bool selected = (page == text);
    return Container(
      padding: EdgeInsets.all(10),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 3, 20, 3),
        onPressed: () {
          if (!selected) {
            if (text == "Home") {
              Navigator.of(context).push(_createRoute(Home()));
            } else if (text == "Projects") {
              Navigator.of(context).push(_createRoute(Projects()));
            } else if (text == "Contact Me") {
              Navigator.of(context).push(_createRoute(ContactMe()));
            } else if (text == "Experiences") {
              Navigator.of(context).push(_createRoute(Experiences()));
            } else if (text == "Blog") {
              Navigator.of(context).push(_createRoute(Blog()));
            }
          }
        },
        color: selected
            ? Colors.transparent
            : const Color.fromRGBO(212, 163, 115, 1),
        elevation: selected ? 0 : 2,
        hoverColor: Colors.transparent,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: selected
            ? Column(
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    width: 7,
                    height: 7,
                  )
                ],
              )
            : Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 237, 205, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("lib/images/DB.png"),
          ),
          Container(
            child: Row(
              children: [
                createButton("Home", context),
                createButton("Projects", context),
                createButton("Experiences", context),
                createButton("Blog", context),
                createButton("Contact Me", context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
