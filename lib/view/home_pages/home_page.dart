import 'package:flutter/material.dart';
import 'package:gym_helper_githup/view/home_pages/body_sizes.dart';
import 'package:gym_helper_githup/view/home_pages/calorie_calculator.dart';
import 'package:gym_helper_githup/view/home_pages/horizontal_scroll_menu.dart';
import 'package:gym_helper_githup/widgets/widget.dart';

import '../../constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        appBar: AppBarWidget(context, false),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                height: 1,
                width: size.width,
              ),
              HorizontalScrollMenu(),
              SizedBox(height: mediumPading),
              BodyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: smallPading),
        CaloriHesabi(),
        SizedBox(height: smallPading),
        VucutOlculerim(),
        SizedBox(height: smallPading),
      ],
    );
  }
}

/*
class TheMostPopularExercises extends StatelessWidget {
  MostPopulerExercises exercises = MostPopulerExercises();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 400,
      width: size.width,
      decoration: BoxDecoration(
          color: kShadowColor, borderRadius: BorderRadius.circular(25)),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "En Çok Tıklanan Hareketler",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExercisesListPage()));
                  },
                  icon: Icon(Icons.chevron_right_outlined),
                  color: Colors.white,
                  focusColor: kShadowColor,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  iconSize: 28,
                ),
              ],
            ),
            SizedBox(height: mediumPading),
            SizedBox(
              height: size.height / 2.75,
              width: size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  gifsCardWidget("assets/gifs/kol/Barbell-Curl.gif"),
                  Card(
                    child: Image.asset(
                      " exercises.populerHareketler![0].toString()",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    child: Image.asset(
                      " exercises.populerHareketler![1].toString()",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    child: Image.asset(
                      "assets/images/food.jpg",
                      fit: BoxFit.cover,
                    ),
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

Widget gifsCardWidget(String gif) {
  return InkWell(
    child: Container(
      width: 260,
      child: Card(
        child: Image.asset(
          gif,
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
 */
