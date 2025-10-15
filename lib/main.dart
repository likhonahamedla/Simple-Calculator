import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'functional.dart';
import 'myApp.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FunctionalData(),
      child: const MyApp(),
    ),
  );
}
