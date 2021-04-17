import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:training/components/app_bar_button.dart';
import 'package:training/components/chest_menu_item.dart';
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chest',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        'and legs',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFFA8A7A7),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
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
                        style: TextStyle(fontSize: 30.0),
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
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.all(0.0),
                      width: 200,
                      height: 200,
                      child: SimplePieChart.withSampleData(),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.all(0.0),
                          minLeadingWidth: 0.0,
                          leading: Icon(
                            Icons.circle,
                            color: Color(0xFFFF5722),
                            size: 13.0,
                          ),
                          title: Text(
                            'Cardio',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFA8A7A7),
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.all(0.0),
                          minLeadingWidth: 0.0,
                          leading: Icon(
                            Icons.circle,
                            color: Color(0xFF6E22E5),
                            size: 13.0,
                          ),
                          title: Text(
                            'Strength',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFA8A7A7),
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0.0),
                          minLeadingWidth: 0.0,
                          leading: Icon(
                            Icons.circle,
                            color: Color(0xFF22A1E5),
                            size: 13.0,
                          ),
                          title: Text(
                            'Stretch',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFA8A7A7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '18',
                              style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '53',
                              style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '29',
                              style: TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
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
                  CircleAvatar(
                    backgroundColor: Color(0x15FF5722),
                    radius: 30.0,
                    child: Icon(
                      Icons.bolt,
                      size: 40.0,
                      color: Color(0xFFFF5722),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0x156E22E5),
                    radius: 30.0,
                    child: Icon(
                      Icons.sports_basketball_sharp,
                      size: 40.0,
                      color: Color(0xFF6E22E5),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0x1522A1E5),
                    radius: 30.0,
                    child: Icon(
                      Icons.timer,
                      size: 40.0,
                      color: Color(0xFF22A1E5),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '450',
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'cal',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Burned',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA8A7A7),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '148',
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'kg',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lifted',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA8A7A7),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '50',
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'min',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Duration',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA8A7A7),
                        ),
                      ),
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
