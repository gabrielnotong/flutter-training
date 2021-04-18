import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:training/components/app_bar_button.dart';
import 'package:training/constants.dart';
import 'package:training/routing/animated_route.dart';
import 'package:training/screens/exercises_screen.dart';
import 'package:training/screens/muscles_screen.dart';
import 'package:training/screens/overview_screen.dart';
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
              Navigator.of(context).push(
                AnimatedRoute(page: RightMenuScreen()).create(),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
              flex: 5,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0.0,
                    toolbarHeight: 50.0,
                    bottom: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: kTextChestMenuActiveColor,
                      unselectedLabelColor: kTextChestMenuInActiveColor,
                      indicator: BubbleTabIndicator(
                        indicatorHeight: 50.0,
                        indicatorColor: Color(0xFFF4F4F7),
                        tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        indicatorRadius: 10,
                        insets: EdgeInsets.all(0),
                      ),
                      tabs: [
                        Text('Overview'),
                        Text('Exercises'),
                        Text('Muscles'),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      OverviewScreen(),
                      ExercisesScreen(),
                      MusclesScreen(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
