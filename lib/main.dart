import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:society/dashboard.dart';
import 'package:society/form.dart';

void main() {
  runApp(const StyledToast(
    locale: Locale('en', 'US'),
    child: MaterialApp(
      home: SafeArea(child: ToDoForm()),
    ),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
