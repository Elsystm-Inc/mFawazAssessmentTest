import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mfawazTest/ui/modules/main/home/project_card.widget.dart';
import 'package:mfawazTest/ui/modules/main/home/properties_card.widget.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';
import 'package:mfawazTest/ui/style/theme.dart';
import 'package:mfawazTest/utils/dummy_data_generator.dart';

import 'neighborhood_card.widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool checkedValue = false;
  DummyDataGenerator ddg = DummyDataGenerator();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SEARCHING IN",
                    style: TextStyle(
                      color: AppColors.customGreyLevels[300],
                      fontFamily: "Gothanm",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SvgPicture.asset(
                      "assets/icons/home_icon.svg",
                    ),
                  ),
                  Text(
                    "NEW PROJECTS",
                    style: AppTheme.textTheme.headline3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.search,
                            color: AppColors.customGreyLevels[400],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search by Location'),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: AppColors.customGreyLevels[400],
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gotham",
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              child: DecoratedBox(
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.filter_alt_sharp,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.customGreyLevels[400],
                                  border: Border.all(
                                    color: AppColors.customGreyLevels[400],
                                    width: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Neighborhood For You",
                      style: AppTheme.textTheme.headline2,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ddg.neighborhoods.length,
                    itemBuilder: (context, index) {
                      return NeighborhoodCard(nbh: ddg.neighborhoods[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 24, bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recommended Properties",
                      style: AppTheme.textTheme.headline2,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 306,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ddg.units.length,
                    itemBuilder: (context, index) {
                      return PropertiesCard(unit: ddg.units[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 24, bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recommended Projects",
                      style: AppTheme.textTheme.headline2,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ddg.units.length,
                    itemBuilder: (context, index) {
                      return ProjectCard(unit: ddg.units[index]);
                    },
                  ),
                ),
                Container(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void navigationPage() {
    // if (_route == Constants.authPage) {
    //   Navigator.pushReplacement(
    //     context,
    //     PageRouteBuilder(
    //       transitionDuration: Duration(seconds: 1),
    //       pageBuilder: (_, __, ___) => AuthPage(),
    //       settings: RouteSettings(
    //         name: Constants.authPage,
    //       ),
    //     ),
    //   );
    // } else {
    //   Navigator.of(context).pushReplacementNamed(_route);
    // }
  }
}
