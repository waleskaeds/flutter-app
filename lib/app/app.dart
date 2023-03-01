import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:imagepicker/app/routes.dart';

import '../telas/initial_page.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.deepPurpleAccent,
          secondary: const Color.fromARGB(255, 77, 163, 243)
        ),
        //hintColor: Theme.of(context).colorScheme.primary
      ),
      routes: {
        AppRoutes.INITIAL : (context) => const InitialPage()
      },
    );
  }
}