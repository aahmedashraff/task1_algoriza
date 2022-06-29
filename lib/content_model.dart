import 'package:flutter_onboard/flutter_onboard.dart';

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Get Orders Delivered As Soon As Possible",
    description: "Goal support your motivation and inspire you to work harder",
    imgUrl: "assets/images/onboard1.png",
  ),
  const OnBoardModel(
    title: "Track your progress with statistics",
    description:
        "Analyse personal result with detailed chart and numerical values",
    imgUrl: 'assets/images/onboard2.png',
  ),
  const OnBoardModel(
    title: "Create photo comparisons and share your results",
    description:
        "Take before and after photos to visualize progress and get the shape that you dream about",
    imgUrl: 'assets/images/onboard3.png',
  ),
];
//
// class OnboardingContent {
//   String image;
//   String title;
//   String description;
//
//   OnboardingContent.onboardingContent(
//       {required this.image, required this.title, required this.description});
// }
//
// List<OnboardingContent> contents = [
//   OnboardingContent.onboardingContent(
//       title: 'Get Orders Delivered As Soon As Possible',
//       image: 'assets/images/onboard1.svg',
//       description:
//           "we have young and professional delivery team that will bring your order ASAP"),
//   OnboardingContent.onboardingContent(
//       title: 'Fast Delivery',
//       image: 'assets/images/onboard2.svg',
//       description:
//           "we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected "),
//   OnboardingContent.onboardingContent(
//       title: 'Ordering Services',
//       image: 'assets/images/onboard3.svg',
//       description:
//           'app helps the customer to access the online food ordering platforms,'),
// ];
