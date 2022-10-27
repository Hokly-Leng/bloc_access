import 'package:bloc_access/cores/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: BlocBuilder(
          bloc: cubit,
          builder: ((context, state) {
            return Text('$state', style: const TextStyle(color: Colors.amber, fontSize: 50),);
          }),
        ),
      ),
    );
  }
}
