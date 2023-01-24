import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppColors mainColor;
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/54247489?v=4', // replace if you want
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Thyago',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(color: AppColors.mainColor, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
