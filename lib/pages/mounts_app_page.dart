import 'package:flutter/material.dart';
import 'package:flutter_mounts_world/models/category_model.dart';
import 'package:flutter_mounts_world/models/mount_model.dart';
import 'package:flutter_mounts_world/widgets/app_header_widget.dart';

import '../widgets/app_mount_listview_widget.dart';
import '../utils/app_colors.dart';
import '../widgets/app_search_widget.dart';

class MountsAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Icon(
            Icons.terrain,
            color: AppColors.mainColor,
            size: 40,
          ),
        ),
        actions: [
          SizedBox(
            width: 40,
            height: 40,
          )
        ],
        iconTheme: IconThemeData(color: AppColors.mainColor),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: AppColors.mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeaderWidget(),
          AppSearchWidget(),
          Expanded(
            child: AppMountListViewWidget(),
          ),
          AppCategoryListWidget()
        ],
      ),
    );
  }
}

class AppCategoryListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              )),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                CategoryModel currentCategory = categories[index];
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(top: 10, right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.2), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(currentCategory.icon, color: AppColors.mainColor),
                      Text(
                        currentCategory.category,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
