import 'dart:ui';

import 'package:my_website/Models/experiences_model.dart';

import 'Models/project_model.dart';

Color primaryColor = const Color.fromRGBO(250, 237, 205, 1);
Color secondaryColor = const Color.fromRGBO(212, 163, 115, 1);
Color black = const Color.fromRGBO(0, 0, 0, 1);
Color white = const Color.fromRGBO(255, 255, 255, 1);
List<Project> projects = [
  Project(
    "IBuy",
    "iBuy is a cashback app that connects customers with nearby retailers, allowing them to choose from various cashback plans. Retailers can create and manage their plans, while customers can upload receipts and track their cashback status through a dedicated mobile app.",
    "Introducing iBuy, a feature-rich cashback app connecting customers with nearby retailers. This innovative platform enables retailers to create customized cashback plans with flexible options, enticing customers to shop within the specified spending limits. Customers can select from a variety of plans, upload purchase receipts via the mobile app, and enjoy cashback rewards. With a dedicated admin website overseeing all activities, iBuy ensures a seamless experience for both retailers and customers, promoting greater engagement and loyalty in the shopping ecosystem.",
    "Discover iBuy, the groundbreaking cashback app that revolutionizes shopping experiences. By bridging customers and nearby retailers, iBuy empowers retailers to craft enticing cashback plans, encouraging customer loyalty. The user-friendly mobile app allows customers to explore multiple plans, monitor their progress, and easily submit receipts for approval. Meanwhile, retailers gain insights through the Retailer website, managing enrolled stores and plan details effortlessly. The exclusive admin website provides a comprehensive overview, giving you full control over the platform. Embrace the future of rewarding shopping journeys with iBuy, where cashback, convenience, and connection converge seamlessly.",
    [],
    [
      "Software Development",
      "UI/UX design",
      "Entrepreneurship",
      "Leadership",
      "Web Development",
      "App development",
      "Firebase",
      "OOP",
      "Flutter",
      "Dart",
      "Time-Management",
      "Teamwork"
    ],
    "01/2022",
    "Present",
  ),
  Project(
    "AttendIt",
    "Introducing AttendIt, the cutting-edge mobile app designed for small to medium-sized institutions to efficiently track staff attendance. Featuring advanced capabilities like location detection and face recognition, it ensures accuracy and prevents misuse. With seamless compatibility across Android and iPhone devices, AttendIt offers attendance summaries, upcoming holidays, and personalized admin features for streamlined management and enhanced productivity.",
    "AttendIt is a sophisticated mobile app catering to small to medium-sized institutions, revolutionizing staff attendance tracking. Leveraging location detection and face recognition, it guarantees authenticity while preventing fraudulent attendance. Backwards compatible with Android 5 and newer versions, as well as iPhones, it provides comprehensive attendance summaries, upcoming holidays, and salary details for account holders. Additionally, the app offers exclusive admin credentials, empowering owners to manage staff attendance efficiently, send personalized messages, notifications, and facilitate workflow with document sharing.",
    "Streamline staff attendance tracking with AttendIt, a cutting-edge mobile app designed for small to medium-sized institutions. Featuring advanced location detection and face recognition, it ensures accurate and reliable attendance records, eliminating possibilities of false attendance. Compatible with Android 5 and newer versions, as well as iPhones, the app offers comprehensive attendance summaries, upcoming holiday alerts, and salary details, keeping account holders informed. Furthermore, AttendIt grants admin credentials, empowering institute owners to access attendance summaries of all staff members, facilitate seamless communication through personal messages and customized notifications, and simplify workflow with secure document sharing. Embrace AttendIt for efficient attendance management and enhanced productivity within your institution.",
    [
      "lib/images/Attendit1.png",
      "lib/images/Attendit2.png",
      "lib/images/Attendit3.png",
      "lib/images/Attendit4.png",
    ],
    [
      "Software Development",
      "UI/UX Design",
      "Entrepreneurship",
      "Leadership",
      "Artificial Intelligence",
      "AWS",
      "App development",
      "OOP",
      "Flutter",
      "Dart",
      "Time-Management",
      "Teamwork"
    ],
    "05/2021",
    "12/2021",
  ),
];
List<Experience> experiences = [
  Experience(
    "Software Developer Intern/Co-op",
    "SOTI, Mississauga, ON",
    "05/2022",
    "04/2023",
    [
      "Wrote well-designed, testable, and reusable code in C# .NET programming language, SQL, and XML using best software development practices, clean code, and solid principles.",
      "Contributed towards software development lifecycle by finding 10+ bugs in CI/CD pipeline, design, and implementation by taking initiative to report the bugs to the appropriate team.",
      "Collaborated and communicated on projects with an all-star team of over 20 persons of varying skill sets to code features, review each other’s code, and participate in design discussions.",
      "Achieved higher customer satisfaction as measured by closing 5+ customer issues with positive reviews by debugging the code for edge case bugs.",
      "Worked on debugging SQL queries using MySQL, SQL Server, and their stored procedures to fix 5+ bugs and 3 flaky Tests."
          "Increased efficiency of bug detection in the test environment of projects by 20% by creating 50+ different unit tests and 10+ BDD tests",
    ],
    [
      "Windows Development",
      "CI/CD",
      "Github Enterprise",
      "JIRA",
      "Test Driven Development (TDD)",
      "Behaviour Driven Development (BDD)",
      "Unit Tests",
      "SQL",
      "Team Work",
      "Time Management",
      "Bug detection and Fixes",
      "OOP",
    ],
  ),
  Experience(
    "Android Developer (Apprentice)",
    "Phosphosens, Toronto, ON",
    "05/2021",
    "08/2021",
    [
      "Designed and programmed an app in Android Studio, Java, and Figma to obtain the phosphorus level in a water sample using an external sensor developed by the start-up",
      "Utilized agile methodologies to analyze information and evaluate results to choose the best solution and ensure the system is performant and maintainable",
      "Communicated and networked with the Professors from McMaster University while strengthening work ethic and conducted unit testing to assess and correct more than 5 bugs in the app to improve the app performance by 20%",
    ],
    [
      "Mobile App Development",
      "USB data transfer",
      "UI/UX design",
      "Prototyping",
      "Java",
      "Android Studio",
      "Team Work",
      "Time Management",
      "OOP",
    ],
  ),
  Experience(
    "App Developer (Working Remotely, Freelance)",
    "GD College, Haryana, INDIA",
    "07/2020",
    "04/2021",
    [
      "Decreased false attendance reports by more than 30% by programming an attendance system in Java using Android Studio and Firebase which increased productivity by at least 15%",
      "Achieved higher customer satisfaction measured by 40% fewer bug reports by creating a group of 20 test customers to find bugs before launching the next version",
      "Boosted the performance of the app by 50 % by redesigning and coding a new version of the app with new technologies like Flutter",
    ],
    [
      "Mobile App Development",
      "Artificial Intelligence",
      "UI/UX design",
      "Amazon Firebase Services (AWS)",
      "Firebase",
      "Android Studio",
      "Team Work",
      "Time Management",
      "OOP",
    ],
  ),
];
