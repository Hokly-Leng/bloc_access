import 'package:bloc_access/cores/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = context.read<CounterCubit>();
    return Material(
      color: Colors.amber,
      child: SizedBox(
        width: 200,
        height: 100,
        child: Center(
          // child: BlocBuilder(
          //   bloc: cubit,
          //   builder: (context, state) {
          //     return Text(
          //       '$state',
          //       style: const TextStyle(color: Colors.white, fontSize: 50),
          //     );
          //   },
          // ),

          child: BlocConsumer<CounterCubit, int>(
            bloc: cubit,
            buildWhen: (previous, current) {
              if (current >= 5) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(color: Colors.white, fontSize: 50),
              );
            },
            listenWhen: (previous, current) {
              if (current >= 5) {
                return true;
              } else {
                return false;
              }
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(milliseconds: 400),
                  content: Text('Showing Snackbar $state'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
