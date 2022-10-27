import 'package:bloc_access/cores/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoveWidget extends StatelessWidget {
  const RemoveWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        onTap: () => BlocProvider.of<CounterCubit>(context).decrement(),
        borderRadius: BorderRadius.circular(25),
        child: const SizedBox(
          width: 70,
          height: 100,
          child: Icon(
            Icons.remove,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
