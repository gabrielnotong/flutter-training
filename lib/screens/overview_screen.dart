import 'package:flutter/material.dart';
import 'package:training/components/activity_card.dart';
import 'package:training/components/circular_icon.dart';
import 'package:training/components/health_radio.dart';
import 'package:training/components/number_card.dart';
import 'package:training/components/simple_pie_chart.dart';

class OverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                icon: Icons.sports_handball,
                iconColor: Color(0xFF6E22E5),
                bgColor: Color(0x156E22E5),
              ),
              CircularIcon(
                icon: Icons.timer,
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
    );
  }
}
