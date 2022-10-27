import 'package:bloc_access/features/screens/home/add_widget.dart';
import 'package:bloc_access/features/screens/home/data_widget.dart';
import 'package:bloc_access/features/screens/home/remove_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Access',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              RemoveWidget(),
              DataWidget(),
              AddWidget(),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: ((context) => BlocProvider.value(
          //           value: cubit,
          //           child: const SettingScreen(),
          //         )),
          //   ),
          // );

          // Navigator.pushNamed(context, '/setting');
          Navigator.of(context).pushNamed('/setting');
        },
        child: const Icon(
          Icons.forward_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
