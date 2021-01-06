import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';
import 'package:mfawazTest/ui/style/theme.dart';
import 'package:mfawazTest/ui/modules/main/community/post_card.widget.dart';
import 'package:mfawazTest/utils/dummy_data_generator.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool checkedValue = false;
  DummyDataGenerator ddg = DummyDataGenerator();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print(ddg.posts.length);
    print(ddg.posts[0].replies[0].name);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Community & Neighborhood",
                    style: AppTheme.textTheme.headline2.copyWith(fontSize: 18),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Center(
                  child: DefaultTabController(
                    length: 4,
                    child: TabBar(
                      labelStyle:
                          AppTheme.textTheme.headline2.copyWith(fontSize: 14),
                      unselectedLabelStyle: AppTheme.textTheme.headline2
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                      isScrollable: true,
                      indicatorColor: AppColors.customGreyLevels[400],
                      labelColor: AppColors.customGreyLevels[400],
                      tabs: [
                        Tab(text: "General"),
                        Tab(text: "Locations"),
                        Tab(text: "Prices"),
                        Tab(text: "Transportation"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: ddg.posts.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return PostCard(
                      post: ddg.posts[index],
                      type: 2,
                    );
                  } else {
                    return PostCard(
                      post: ddg.posts[(index - 1)],
                      type: 1,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
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
