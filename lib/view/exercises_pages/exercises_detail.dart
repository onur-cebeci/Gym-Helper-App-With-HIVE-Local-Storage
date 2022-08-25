import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper_githup/constant.dart';
import 'package:gym_helper_githup/models/gym_model.dart';

class ExercisesDetail extends StatelessWidget {
  final Exercises exercises;
  ExercisesDetail({required this.exercises});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
            kShadowColor,
            kPrimaryColor,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text(exercises.name.toString()),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: exercises.img.toString(),
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        child: Image.asset(
                          exercises.img.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mediumPading),
                InformaitonWidget(exercises: exercises),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.width;

    final path = Path();

    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 60, w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class InformaitonWidget extends StatelessWidget {
  const InformaitonWidget({
    required this.exercises,
  }) : super();

  final Exercises exercises;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'information',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9)),
            ).tr(),
          ],
        ),
        SizedBox(height: smallPading),
        Container(
          margin: EdgeInsets.symmetric(horizontal: mediumPading),
          color: Colors.white70,
          height: 1,
          width: width,
        ),
        SizedBox(height: mediumPading),
        informationArea(height, width),
        SizedBox(height: mediumPading),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "   Bulk    ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.9)),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: smallPading),
                  Text(
                    exercises.antreman![0].toString() +
                        "\n" +
                        exercises.antreman![1].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: mediumPading),
              Column(
                children: [
                  Text(
                    "Definasyon",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.9)),
                  ),
                  SizedBox(height: smallPading),
                  Text(
                    exercises.antreman![2].toString() +
                        "\n" +
                        exercises.antreman![3].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: smallPading),
      ],
    );
  }

  SizedBox informationArea(double height, double width) {
    return SizedBox(
      height: height / 5,
      width: width - 40,
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey.withOpacity(0.1),
          child: Text(
            exercises.categoryId == 1
                ? 'information_chest'
                : exercises.categoryId == 2
                    ? 'information_biceps'
                    : exercises.categoryId == 3
                        ? 'information_triceps'
                        : exercises.categoryId == 4
                            ? 'information_back'
                            : exercises.categoryId == 5
                                ? 'information_shoulder'
                                : exercises.categoryId == 6
                                    ? 'information_leg'
                                    : exercises.categoryId == 7
                                        ? 'information_wrist'
                                        : exercises.categoryId == 8
                                            ? 'information_abs'
                                            : "",
            style:
                TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16),
          ).tr(),
        ),
      ),
    );
  }
}
