import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mfawazTest/data/model/post_model.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';
import 'package:mfawazTest/ui/style/theme.dart';
import 'package:mfawazTest/ui/modules/main/community/reply_card.widget.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
    @required this.type,
    @required this.post,
  }) : super(key: key);

  final Post post;
  final int type;

  Widget widgetChooser() {
    if (type == 1) {
      return Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 40,
                  offset: Offset(4, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          post.image,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.name,
                                style: AppTheme.textTheme.button.copyWith(
                                    color: AppColors.customGreyLevels[400]),
                              ),
                              Container(
                                height: 8,
                              ),
                              Text(
                                post.date,
                                style: AppTheme.textTheme.bodyText2.copyWith(
                                    color: AppColors.customGreyLevels[300]),
                              ),
                              Container(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:
                                        256, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                                    child: Center(
                                      //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                                      child: Text(
                                        post.content,
                                        style: AppTheme.textTheme.button
                                            .copyWith(
                                                color: AppColors
                                                    .customGreyLevels[400]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print("1");
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/icons/post_icon.svg",
                                          ),
                                          Container(
                                            width: 4,
                                          ),
                                          Text(post.noReplies,
                                              style:
                                                  AppTheme.textTheme.headline5),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 24,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print("2");
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/icons/share_icon.svg",
                                          ),
                                          Container(
                                            width: 4,
                                          ),
                                          Text(post.noShares,
                                              style:
                                                  AppTheme.textTheme.headline5),
                                          Container(
                                            width: 32,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: post.replies.length,
                    itemBuilder: (context, index) {
                      return ReplyCard(reply: post.replies[index]);
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          post.image,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 50,
                            color: AppColors.customGreyLevels[100],
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Write a Comment'),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              AppColors.customGreyLevels[400],
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Gotham",
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                          "assets/icons/send_icon.svg"),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        /*Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 100,
                          height: 50,
                          color: AppColors.customGreyLevels[200],
                          child: Row(
                            children: [
                              TextField(
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Center(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                          "assets/icons/post_icon.svg"),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),*/
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset(
                  post.image,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.name,
                        style: AppTheme.textTheme.bodyText2
                            .copyWith(color: AppColors.customGreyLevels[300]),
                      ),
                      Container(
                        height: 8,
                      ),
                      Text(
                        post.question,
                        style: AppTheme.textTheme.button
                            .copyWith(color: AppColors.customGreyLevels[400]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Widget widget = widgetChooser();
    return widget;
  }
}
