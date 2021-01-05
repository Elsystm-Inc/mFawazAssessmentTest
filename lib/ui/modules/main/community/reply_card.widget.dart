import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mfawazTest/data/model/post_model.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';
import 'package:mfawazTest/ui/style/theme.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({
    Key key,
    @required this.reply,
  }) : super(key: key);

  final Post reply;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 50),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          reply.image,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                reply.name,
                                style: AppTheme.textTheme.button.copyWith(
                                    color: AppColors.customGreyLevels[400]),
                              ),
                              Container(
                                height: 8,
                              ),
                              Text(
                                reply.date,
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
                                        200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                                    child: Center(
                                      //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                                      child: Text(
                                        reply.content,
                                        style: AppTheme.textTheme.button
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
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
                                        print("3");
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/icons/clap_icon.svg",
                                          ),
                                          Container(
                                            width: 4,
                                          ),
                                          Text(reply.noUps,
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
                                        print("4");
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/icons/sb_icon.svg",
                                          ),
                                          Container(
                                            width: 4,
                                          ),
                                          Text(reply.noReplies,
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
                                        print("5");
                                      },
                                      child: SvgPicture.asset(
                                        "assets/icons/share_icon.svg",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
