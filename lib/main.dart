import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:society/dashboard.dart';
import 'package:society/form.dart';
import 'package:society/routes.dart';

void main() {
  runApp(StyledToast(
    locale: Locale('en', 'US'),
    child: MaterialApp(
      onGenerateRoute: Routes.onGenerateRoute,
      home: Scaffold(body: SafeArea(child: ToDoForm())),
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
