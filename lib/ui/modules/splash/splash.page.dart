import 'dart:async';

import 'package:mfawazTest/bloc/user/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';

import '../../../utils/constants.dart';

class LandingSplashScreen extends StatefulWidget {
  @override
  _LandingSplashScreenState createState() => _LandingSplashScreenState();
}

class _LandingSplashScreenState extends State<LandingSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Constants.authPage);
    });
    //BlocProvider.of<UserBloc>(context).add(GetUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (BuildContext context, UserState state) async {
        if (state is UserLoadedState) {
        } else if (state is UserErrorState) {}
      },
      child: Scaffold(
        backgroundColor: AppColors.customGreyLevels[50],
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Image(
                  height: MediaQuery.of(context).size.width / 1,
                  width: MediaQuery.of(context).size.width / 1,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: Text(
                  "T H E    A D D R E S S",
                  style: TextStyle(
                      color: AppColors.customGreyLevels[300],
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gotham",
                      fontSize: 18),
                ),
              ),
            )
            /*Align(
            alignment: Alignment.bottomCenter,
            child: LinearProgressIndicator(
              backgroundColor: AppColors.customGreyLevels[400],
              valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.customGreyLevels[400]),
            ),
          ),*/
          ],
        ),
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
