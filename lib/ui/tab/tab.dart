import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:exam_five/cubit/connectivity/connectivity_cubit.dart';
import 'package:exam_five/ui/first_task/first_task.dart';
import 'package:exam_five/ui/no_internet/no_internet.dart';
import 'package:exam_five/ui/second_task/second_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  _init() async {
    print("INTERNET TURNED ON CALL ANY API");
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List screens = [
      FirstPage(),
      SecondPage(),
      Container(),
      Container(),
    ];
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        if (state.connectivityResult == ConnectivityResult.none) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NoInternetScreen(voidCallback: _init),
              ));
        }
      },
      child: Scaffold(
        body: screens[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            currentPage = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "A",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "B",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "C",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp),
              label: "D",
            )
          ],
        ),
      ),
    );
  }
}
