import 'package:flutter/material.dart';

import '../models/bottom_bar_item_model.dart';
import '../utils/app_colors.dart';

class AppBottomBarWidget extends StatefulWidget {
  @override
  State<AppBottomBarWidget> createState() => _AppBottomBarWidgetState();
}

class _AppBottomBarWidgetState extends State<AppBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset.zero)
        ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(barItems.length, (index) {
              AppBottomBarItem currentBarItem = barItems[index];

              Widget barItemWidget;

              if (currentBarItem.isSelected) {
                barItemWidget = Container(
                    padding:
                        EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.mainColor),
                    child: Row(children: [
                      Icon(currentBarItem.icon, color: Colors.white),
                      SizedBox(width: 5),
                      Text(currentBarItem.label,
                          style: TextStyle(color: Colors.white))
                    ]));
              } else {
                barItemWidget = IconButton(
                    icon: Icon(currentBarItem.icon, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        barItems.forEach((AppBottomBarItem item) {
                          item.isSelected = item == currentBarItem;
                        });
                      });
                    });
              }

              return barItemWidget;
            })));
  }
}
