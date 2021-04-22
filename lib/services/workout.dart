import 'package:flutter/services.dart';

class WorkoutModel {
  Future<String> getExercisesCategories() async {
    return await rootBundle.loadString('assets/exercises.json');
  }
}
