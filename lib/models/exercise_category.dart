import 'exercise.dart';

class ExerciseCategory {
  final String title;
  final String titleAside;
  final List<dynamic> exercises;

  ExerciseCategory({this.title, this.titleAside, this.exercises});

  factory ExerciseCategory.fromJson(Map<String, dynamic> json) {
    var list = json['exercises'];

    return ExerciseCategory(
      title: json['title'],
      titleAside: json['titleAside'],
      exercises: list.map((i) => Exercise.fromJson(i)).toList(),
    );
  }
}
