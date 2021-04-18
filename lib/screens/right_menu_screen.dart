import 'package:flutter/material.dart';
import 'package:training/components/workout_item.dart';
import 'package:training/constants.dart';

class RightMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Column(
        children: [
          WorkoutItem(
            label: 'Repeat Now',
            iconData: Icons.local_fire_department,
            bgIconColor: 0x15FF5722,
            iconColor: 0xFFFF5722,
          ),
          WorkoutItem(
            label: 'Edit Workout',
            iconData: Icons.edit_sharp,
            bgIconColor: 0x296E22E5,
            iconColor: 0xFF6E22E5,
          ),
          WorkoutItem(
            label: 'Share Workout',
            iconData: Icons.share,
            bgIconColor: 0x2922A1E5,
            iconColor: 0xFF22A1E5,
          ),
          WorkoutItem(
            label: 'Add to Favorites',
            iconData: Icons.star_sharp,
            bgIconColor: 0x15FF5722,
            iconColor: 0xFFFF5722,
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x2922A1E5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.question_answer_rounded,
                    size: 50.0,
                    color: Color(0xFF22A1E5),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Get Help',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: kCloseIconColor,
                ),
                Text(
                  'CLOSE',
                  style: kTextDefaultStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
