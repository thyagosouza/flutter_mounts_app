import 'package:flutter/material.dart';
import 'package:flutter_mounts_world/models/bottom_bar_item_model.dart';
import 'package:flutter_mounts_world/models/category_model.dart';
import 'package:flutter_mounts_world/models/mount_model.dart';
import 'package:flutter_mounts_world/widgets/app_header_widget.dart';

import '../widgets/app_bottom_bar_widget.dart';
import '../widgets/app_category_list_widget.dart';
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
          AppCategoryListWidget(),
          AppBottomBarWidget(),
        ],
      ),
    );
  }
}
