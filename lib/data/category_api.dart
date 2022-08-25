import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:gym_helper_githup/models/category_model.dart';

class CategoryApi {
  Future<List<Category>> readCategoriesJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/data/category.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => Category.fromMap(e)).toList();
  }
}
