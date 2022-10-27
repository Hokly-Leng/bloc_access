import 'package:bloc_access/cores/bloc.dart';
import 'package:bloc_access/cores/route.dart';
import 'package:bloc_access/features/screens/home/home_screen.dart';
import 'package:bloc_access/features/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final route = MyRoute();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Bloc Access',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      // home: BlocProvider(
      //   create: (context) => CounterCubit(),
      //   child: const HomeScreen(title: 'Flutter Demo Bloc Access'),
      // ),


      //NameRoute
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => BlocProvider(create: (context) => cubit, child: const HomeScreen(title: 'Flutter Demo Bloc Access'),),
      //   '/setting': (context) => BlocProvider.value(value: cubit, child: const SettingScreen(),),
      // },

      //OnGenerateRoute
      onGenerateRoute: route.onRoute,


    );
  }
}
