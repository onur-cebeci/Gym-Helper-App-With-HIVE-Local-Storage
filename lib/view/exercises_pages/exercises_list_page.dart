import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper_githup/admob_helper.dart';
import 'package:gym_helper_githup/constant.dart';
import 'package:gym_helper_githup/data/category_api.dart';
import 'package:gym_helper_githup/data/exercises_api.dart';
import 'package:gym_helper_githup/models/category_model.dart';
import 'package:gym_helper_githup/models/gym_model.dart';
import 'package:gym_helper_githup/view/exercises_pages/exercises_detail.dart';
import 'package:gym_helper_githup/widgets/widget.dart';

int _id = 1;
int _index = 1;

class ExercisesListPage extends StatefulWidget {
  const ExercisesListPage({Key? key}) : super(key: key);

  @override
  _ExercisesListPageState createState() => _ExercisesListPageState();
}

class _ExercisesListPageState extends State<ExercisesListPage> {
  @override
  Widget build(BuildContext context) {
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
        appBar: AppBarWidget(context, true),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: FutureBuilder(
                    future: CategoryApi().readCategoriesJsonData(),
                    builder: (context, data) {
                      if (data.hasError) {
                        return Center(
                          child: Text("${data.error}"),
                        );
                      } else if (data.hasData) {
                        var categories = data.data as List<Category>;
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  _id = categories[index].id!;
                                });
                              },
                              child: Card(
                                color: Colors.white24.withOpacity(0.1),
                                elevation: 3,
                                child: SizedBox(
                                  width: 73,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        categories[index]
                                                    .categoryName
                                                    .toString() ==
                                                "Göğüs"
                                            ? 'chest'
                                            : categories[index]
                                                        .categoryName
                                                        .toString() ==
                                                    "Kol"
                                                ? 'biceps'
                                                : categories[index]
                                                            .categoryName
                                                            .toString() ==
                                                        "Arka Kol"
                                                    ? 'triceps'
                                                    : categories[index]
                                                                .categoryName
                                                                .toString() ==
                                                            "Sırt"
                                                        ? 'back'
                                                        : categories[index]
                                                                    .categoryName
                                                                    .toString() ==
                                                                "Omuz"
                                                            ? 'shoulder'
                                                            : categories[index]
                                                                        .categoryName
                                                                        .toString() ==
                                                                    "Bacak"
                                                                ? 'leg'
                                                                : categories[index]
                                                                            .categoryName
                                                                            .toString() ==
                                                                        "Bilek"
                                                                    ? 'wrist'
                                                                    : categories[index].categoryName.toString() ==
                                                                            "Karın"
                                                                        ? 'abs'
                                                                        : "",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ).tr(),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: smallPading),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: FutureBodyWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FutureBodyWidget extends StatefulWidget {
  FutureBodyWidget({Key? key}) : super(key: key);

  @override
  State<FutureBodyWidget> createState() => _FutureBodyWidgetState();
}

class _FutureBodyWidgetState extends State<FutureBodyWidget> {
  AdmobHelper admobHelper = AdmobHelper();

  @override
  void initState() {
    admobHelper.createIntertitialAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ExercisesApi().readJsonData(),
        builder: (context, AsyncSnapshot? data) {
          if (data!.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<Exercises>;

            return ListView.builder(
                padding: EdgeInsets.only(bottom: bigPading - 5),
                itemCount: items.length,
                itemBuilder: (context, int index) {
                  _index = index;

                  return _id == items[_index].categoryId
                      ? InkWell(
                          onTap: () {
                            admobHelper.showIntertitialAd();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ExercisesDetail(
                                    exercises: data.data[index])));

                            setState(() {});
                          },
                          child: Card(
                            color: Colors.white24.withOpacity(0.1),
                            elevation: 5,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 80,
                                    child: Image(
                                        image: AssetImage(
                                            items[index].img.toString()),
                                        fit: BoxFit.fill),
                                  ),
                                  SizedBox(width: mediumPading),
                                  Expanded(
                                      child: Container(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              items[index].name.toString(),
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white70),
                                            )),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              items[index].categoryId == 1
                                                  ? 'chest'
                                                  : items[index].categoryId == 2
                                                      ? 'biceps'
                                                      : items[index]
                                                                  .categoryId ==
                                                              3
                                                          ? 'triceps'
                                                          : items[index]
                                                                      .categoryId ==
                                                                  4
                                                              ? 'back'
                                                              : items[index]
                                                                          .categoryId ==
                                                                      5
                                                                  ? 'shoulder'
                                                                  : items[index]
                                                                              .categoryId ==
                                                                          6
                                                                      ? 'leg'
                                                                      : items[index].categoryId ==
                                                                              7
                                                                          ? 'wrist'
                                                                          : items[index].categoryId == 8
                                                                              ? 'abs'
                                                                              : "",
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            ).tr()),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const Center();
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

/*
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ExercisesDetail(exercises: data.data[index])));

                       */
