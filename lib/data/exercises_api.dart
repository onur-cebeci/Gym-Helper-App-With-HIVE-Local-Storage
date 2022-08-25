import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:gym_helper_githup/models/gym_model.dart';

class ExercisesApi {
  Future<List<Exercises>> readJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/data/gym.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => Exercises.fromMap(e)).toList();
  }

  Future getProductByCategoryId(int categoryId) async {
    return await rootBundle.rootBundle.loadString('assets/data/category.json');
  }
}
