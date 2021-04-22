import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training/constants.dart';
import 'package:training/models/exercise.dart';
import 'package:training/models/exercise_category.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  List<Widget> exercises = [];

  Future<void> setExercises() async {
    String json = await rootBundle.loadString('assets/exercises.json');
    final jsonResponse = jsonDecode(json);
    List<ExerciseCategory> categories = [];

    for (final c in jsonResponse) {
      categories.add(ExerciseCategory.fromJson(c));
    }

    for (final c in categories) {
      Widget head = Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(c.title, style: kExerciseStepStyle),
            Text(c.titleAside, style: kBodyPartStyle),
          ],
        ),
      );

      exercises.add(head);

      for (Exercise e in c.exercises) {
        Widget ew = Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(int.parse(e.imageBgColor)),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Icon(kIcons[e.imageUrl], size: 40.0),
              ),
              Column(
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
              Icon(Icons.favorite_border)
            ],
          ),
        );

        exercises.add(ew);
      }
    }
  }

  @override
  void initState() {
    // super.initState();

    setExercises();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Set 1', style: kExerciseStepStyle),
                    Text('Quads & Back', style: kBodyPartStyle),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color(0x15FF5722),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Icon(Icons.sports_kabaddi, size: 40.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.horizontal_rule,
                          color: Color(0xFFFF5722),
                        ),
                        SizedBox(height: 5.0),
                        Text('Side Jump', style: kTextDefaultStyle),
                        SizedBox(height: 5.0),
                        Text('15 times', style: kGreyTextDefaultStyle),
                      ],
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color(0x156E22E5),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Icon(Icons.sports_handball, size: 40.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.horizontal_rule,
                          color: Color(0xFF6E22E5),
                        ),
                        SizedBox(height: 5.0),
                        Text('Straight Squat', style: kTextDefaultStyle),
                        SizedBox(height: 5.0),
                        Text('20 times', style: kGreyTextDefaultStyle),
                      ],
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Set 1', style: kExerciseStepStyle),
                    Text('Quads & Back', style: kBodyPartStyle),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color(0x15FF5722),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Icon(Icons.sports_kabaddi, size: 40.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.horizontal_rule,
                          color: Color(0xFFFF5722),
                        ),
                        SizedBox(height: 5.0),
                        Text('Side Jump', style: kTextDefaultStyle),
                        SizedBox(height: 5.0),
                        Text('15 times', style: kGreyTextDefaultStyle),
                      ],
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color(0x156E22E5),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Icon(Icons.sports_handball, size: 40.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.horizontal_rule,
                          color: Color(0xFF6E22E5),
                        ),
                        SizedBox(height: 5.0),
                        Text('Straight Squat', style: kTextDefaultStyle),
                        SizedBox(height: 5.0),
                        Text('20 times', style: kGreyTextDefaultStyle),
                      ],
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
