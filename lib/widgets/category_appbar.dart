import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import 'explore_category.dart';

class CategoryAppbar extends StatelessWidget with PreferredSizeWidget {
  final double deviceWidth;
  final double deviceHeight;
  const CategoryAppbar({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: deviceHeight,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColor.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColor.whiteColor,
      iconTheme: const IconThemeData(color: AppColor.greenTambourine),
      elevation: 0,
      title: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 15,
                child: Text(
                  "탐색",
                  style: TextStyle(
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('My Page')));
                  },
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    size: 28,
                  ),
                  tooltip: 'My Page',
                  alignment: Alignment.centerRight,
                ),
              )
            ],
          ),
          // 나중에 ListView.builder로 변경 https://www.youtube.com/watch?v=4okl2LsLUaU
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ExploreCategory(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: "전체",
                ),
                ExploreCategory(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: "저장",
                ),
                ExploreCategory(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: "Training",
                ),
                ExploreCategory(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: "Bodylanguage",
                ),
                ExploreCategory(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: "Anything",
                ),
              ],
            ),
          ),
        ],
      ),
      //centerTitle: true,
      // actions: <Widget>[
      //   IconButton(
      //       onPressed: () {
      //         ScaffoldMessenger.of(context)
      //             .showSnackBar(const SnackBar(content: Text('My Page')));
      //       },
      //       icon: const Icon(
      //         Icons.account_circle_outlined,
      //         size: 35,
      //       ),
      //       tooltip: 'My Page')
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.7);
}
