import 'package:flutter/material.dart';

class RightMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0x15FF5722),
              child: Icon(
                Icons.local_fire_department,
                color: Color(0xFFFF5722),
              ),
            ),
            title: Text('Repeat Now'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0x296E22E5),
              child: Icon(
                Icons.edit_sharp,
                color: Color(0xFF6E22E5),
              ),
            ),
            title: Text('Edit Workout'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0x2922A1E5),
              child: Icon(
                Icons.share,
                color: Color(0xFF22A1E5),
              ),
            ),
            title: Text('Share Workout'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0x15FF5722),
              child: Icon(
                Icons.star_sharp,
                color: Color(0xFFFF5722),
              ),
            ),
            title: Text('Add to Favorites'),
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
        ],
      ),
    );
  }
}
