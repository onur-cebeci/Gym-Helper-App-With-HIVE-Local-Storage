import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:gym_helper_githup/admob_helper.dart';
import 'package:gym_helper_githup/view/supplement.dart';
import 'package:gym_helper_githup/view/workouts.dart';
import 'package:gym_helper_githup/widgets/widget.dart';

import '../exercises_pages/exercises_list_page.dart';

class HorizontalScrollMenu extends StatefulWidget {
  @override
  State<HorizontalScrollMenu> createState() => _HorizontalScrollMenuState();
}

class _HorizontalScrollMenuState extends State<HorizontalScrollMenu> {
  AdmobHelper admobHelper = AdmobHelper();

  @override
  void initState() {
    super.initState();
    admobHelper.createIntertitialAd();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              children: [
                InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ExercisesListPage()));
                    },
                    child: appBarContainer(
                        size, context, "gym.jpg", 'exercises'.tr())),
                const SizedBox(width: 7),
                InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Supplements()));
                    },
                    child: appBarContainer(
                        size, context, "supplement.jpg", "Supplement")),
                const SizedBox(width: 7),
                InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Future.delayed(const Duration(minutes: 2), () {
                        setState(() {
                          admobHelper.showIntertitialAd();
                        });
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Workouts()));
                    },
                    child: appBarContainer(
                        size, context, "workouts.jpg", 'training'.tr())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
