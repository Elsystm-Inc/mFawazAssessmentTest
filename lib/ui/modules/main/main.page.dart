import 'package:mfawazTest/bloc/user/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mfawazTest/ui/modules/main/home/home.page.dart';
import 'package:mfawazTest/ui/modules/main/community/community.page.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool checkedValue = false;
  int selectedIndex = 0;

  Widget bodyWidget = HomeScreen();
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      bodyWidget = showWidget(selectedIndex);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Widget showWidget(int selected) {
    if (selected == 2) {
      return Container(
        child: CommunityScreen(),
      );
    } else {
      return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (BuildContext context, UserState state) async {
        if (state is UserLoadedState) {
        } else if (state is UserErrorState) {}
      },
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.customGreyLevels[300],
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.support_agent), label: "Agents"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: "Community"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ),
        backgroundColor: AppColors.customGreyLevels[100],
        body: Center(
          child: bodyWidget,
        ),
      ),
    );
  }
}
