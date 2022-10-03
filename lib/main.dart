import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_networking_repetition/checkbox_cubit.dart';

void main() {
  runApp(BlocProvider<CheckboxCubit>(
    create: (context) => CheckboxCubit(),
    child: MaterialApp(
      home: Widget33(),
    ),
  ));
}

class Widget33 extends StatefulWidget {
  const Widget33({Key? key}) : super(key: key);

  @override
  State<Widget33> createState() => _Widget33State();
}

class _Widget33State extends State<Widget33> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CheckboxCubit, CheckboxState>(
              builder: (context, state) {
                return Checkbox(
                    value: state.isChecked,
                    onChanged: (newBool) {
                      BlocProvider.of<CheckboxCubit>(context)
                          .isChecked(newBool);
                    });
              },
            ),
            BlocBuilder<CheckboxCubit, CheckboxState>(
              builder: (context, state) {
                return Text(
                  "Salom",
                  style: TextStyle(decoration: textDecoration(state.isChecked!!)),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  TextDecoration textDecoration(bool isChecked) {
    if (isChecked == true) {
      return TextDecoration.lineThrough;
    } else {
      return TextDecoration.none;
    }
  }
}
