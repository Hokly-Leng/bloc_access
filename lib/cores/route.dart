import 'package:bloc_access/cores/bloc.dart';
import 'package:bloc_access/features/screens/home/home_screen.dart';
import 'package:bloc_access/features/screens/notfound_screen.dart';
import 'package:bloc_access/features/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRoute {
  final CounterCubit cubit = CounterCubit();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => cubit,
            child: const HomeScreen(title: 'Flutter Demo Bloc Access'),
          ),
        );
      case '/setting':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: cubit,
            child: const SettingScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
        );
    }
  }
}
