import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:training/components/activity_card.dart';
import 'package:training/components/app_bar_button.dart';
import 'package:training/components/chest_menu_item.dart';
import 'package:training/components/circular_icon.dart';
import 'package:training/components/health_radio.dart';
import 'package:training/components/number_card.dart';
import 'package:training/components/simple_pie_chart.dart';
import 'package:training/constants.dart';
import 'package:training/screens/right_menu_screen.dart';

class ChestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: AppBarButton(
          icon: Icons.arrow_back_ios_sharp,
          iconColor: Color(0xFF000000),
          onPress: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          AppBarButton(
            icon: Icons.more_horiz,
            iconColor: Color(0xFF000000),
            onPress: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return RightMenuScreen();
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chest',
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Text(
                        'and legs',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFFA8A7A7),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AUG',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFA8A7A7),
                        ),
                      ),
                      Text(
                        '21',
                        style: TextStyle(fontSize: 35.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChestMenuItem(
                    text: 'Overview',
                    textColor: kTextChestMenuActiveColor,
                    bgColor: kBtnChestMenuActiveColor,
                  ),
                  ChestMenuItem(
                    text: 'Exercises',
                    textColor: kTextChestMenuInActiveColor,
                    bgColor: kBtnChestMenuInActiveColor,
                  ),
                  ChestMenuItem(
                    text: 'Muscles',
                    textColor: kTextChestMenuInActiveColor,
                    bgColor: kBtnChestMenuInActiveColor,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 200,
                      height: 200,
                      child: SimplePieChart.withSampleData(),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HealthRadio(
                          label: 'Cardio',
                          iconColor: Color(0xFFFF5722),
                        ),
                        HealthRadio(
                          label: 'Strength',
                          iconColor: Color(0xFF6E22E5),
                        ),
                        HealthRadio(
                          label: 'Stretch',
                          iconColor: Color(0xFF22A1E5),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberCard(label: '18', unit: '%'),
                        NumberCard(label: '53', unit: '%'),
                        NumberCard(label: '29', unit: '%'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularIcon(
                    icon: Icons.bolt,
                    iconColor: Color(0xFFFF5722),
                    bgColor: Color(0x15FF5722),
                  ),
                  CircularIcon(
                    icon: Icons.sports_basketball_sharp,
                    iconColor: Color(0xFF6E22E5),
                    bgColor: Color(0x156E22E5),
                  ),
                  CircularIcon(
                    icon: Icons.sports_basketball_sharp,
                    iconColor: Color(0xFF22A1E5),
                    bgColor: Color(0x1522A1E5),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberCard(label: '450', unit: 'cal'),
                      ActivityCard(label: 'Burned'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberCard(label: '148', unit: 'kg'),
                      ActivityCard(label: 'Lifted'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberCard(label: '50', unit: 'min'),
                      ActivityCard(label: 'Duration'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFF5722),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Repeat Workout',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20.0,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
