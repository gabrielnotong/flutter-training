import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:training/constants.dart';
import 'package:training/models/exercise.dart';
import 'package:training/models/exercise_category.dart';

class ExercisesScreen extends StatelessWidget {
  final String jsonExercises;

  ExercisesScreen({this.jsonExercises});

  List<Container> createExerciseItems(String json) {
    final jsonResponse = jsonDecode(json);
    List<Container> containerWidgets = [];
    List<ExerciseCategory> categories = [];
    List<Widget> exerciseWidgets = [];

    for (final c in jsonResponse) {
      categories.add(ExerciseCategory.fromJson(c));
    }

    for (final c in categories) {
      Widget head = Container(
        margin: EdgeInsets.only(bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(c.title, style: kExerciseStepStyle),
            Text(c.titleAside, style: kBodyPartStyle),
          ],
        ),
      );

      exerciseWidgets.add(head);

      for (Exercise e in c.exercises) {
        Widget ew = Container(
          margin: EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(int.parse(e.imageBgColor)),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Image.asset('images/${e.imageUrl}'),
              ),
              Container(
                width: 150.0,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      kIcons[e.icon],
                      color: Color(int.parse(e.iconColor)),
                    ),
                    SizedBox(height: 5.0),
                    Text(e.text, style: kTextDefaultStyle),
                    SizedBox(height: 5.0),
                    Text('${e.duration} times', style: kGreyTextDefaultStyle),
                  ],
                ),
              ),
              Icon(Icons.favorite_border)
            ],
          ),
        );

        exerciseWidgets.add(ew);
      }

      containerWidgets.add(
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Column(children: exerciseWidgets),
        ),
      );

      exerciseWidgets = [];
    }

    return containerWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: createExerciseItems(jsonExercises),
    );
  }
}
