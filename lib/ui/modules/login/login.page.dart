import 'package:flutter_svg/flutter_svg.dart';
import 'package:mfawazTest/bloc/user/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';

import '../../../utils/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkedValue = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserBloc>(context).add(GetUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (BuildContext context, UserState state) async {
        if (state is UserLoadedState) {
        } else if (state is UserErrorState) {}
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: AppColors.customGreyLevels[100],
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: ShaderMask(
                                child: Image.asset(
                                  "assets/images/logo.png",
                                  scale: 0.6,
                                ),
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [AppColors.customGreyLevels[200]],
                                    stops: [0.0],
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 8, right: 8),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 32),
                                            child: ShaderMask(
                                                child: Image.asset(
                                                  "assets/images/logo.png",
                                                  scale: 2.5,
                                                ),
                                                shaderCallback: (Rect bounds) {
                                                  return LinearGradient(
                                                    colors: [
                                                      AppColors
                                                          .customGreyLevels[400]
                                                    ],
                                                    stops: [0.0],
                                                  ).createShader(bounds);
                                                },
                                                blendMode: BlendMode.srcATop),
                                          ),
                                          Text(
                                            "Login",
                                            style: TextStyle(
                                              color: AppColors
                                                  .customGreyLevels[400],
                                              fontFamily: "Gothanm",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            height: 8,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 16),
                                            child: Text(
                                              "With Your Social Network",
                                              style: TextStyle(
                                                color: AppColors
                                                    .customGreyLevels[400],
                                                fontFamily: "Gothanm",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: DecoratedBox(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: SvgPicture.asset(
                                                "assets/icons/facebook_icon.svg",
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: AppColors
                                                    .customGreyLevels[200],
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: DecoratedBox(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: SvgPicture.asset(
                                                "assets/icons/gmail_icon.svg",
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: AppColors
                                                    .customGreyLevels[200],
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: DecoratedBox(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: SvgPicture.asset(
                                                "assets/icons/twitter_icon.svg",
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: AppColors
                                                    .customGreyLevels[200],
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: AppColors.customGreyLevels[100],
                          height: 1.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 48, 16, 32),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: AppColors.customGreyLevels[100],
                                  height: 1.5,
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Or",
                                    style: TextStyle(
                                      fontFamily: "Gothanm",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: AppColors.customGreyLevels[100],
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 70,
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: DecoratedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 8, 20, 0),
                                  child: Text(
                                    "EMAIL ADDRESS",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: AppColors.customGreyLevels[300],
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Gotham",
                                        fontSize: 10),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Your Email Address'),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: AppColors.customGreyLevels[400],
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Gotham",
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: AppColors.customGreyLevels[200],
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 10),
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: DecoratedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 8, 20, 0),
                                    child: Text(
                                      "PASSWORD",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              AppColors.customGreyLevels[300],
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Gotham",
                                          fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Enter Your Password'),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              AppColors.customGreyLevels[400],
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Gotham",
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: AppColors.customGreyLevels[200],
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Row(
                                  children: [
                                    Theme(
                                      child: Checkbox(
                                        value: checkedValue,
                                        onChanged: (newValue) {
                                          setState(() {
                                            checkedValue = newValue;
                                          });
                                        },
                                      ),
                                      data: ThemeData(
                                        primarySwatch: Colors.blue,
                                        unselectedWidgetColor:
                                            AppColors.customGreyLevels[
                                                200], // Your color
                                      ),
                                    ),
                                    Text(
                                      "Keep Me Login",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              AppColors.customGreyLevels[300],
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Gotham",
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 16, 20),
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: AppColors.customGreyLevels[300],
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Gotham",
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 96, 0, 32),
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: DecoratedBox(
                              child: FlatButton(
                                hoverColor: Colors.black,
                                focusColor: Colors.black,
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, Constants.mainPage);
                                },
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Gotham",
                                        fontSize: 14),
                                  ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Not A Member?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: AppColors.customGreyLevels[400],
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gotham",
                                  fontSize: 12),
                            ),
                            Container(
                              width: 6,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: AppColors.customGreyLevels[400],
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gotham",
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
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
