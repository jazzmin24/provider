import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/pages/home_page.dart';
import 'package:provider_learn/pages/third_page.dart';
import 'package:provider_learn/provider/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountProvider>(create: (_) => CountProvider()),
      ],
      child: MaterialApp(title: 'Flutter Demo', home: ThirdPage()),
    );
  }
}
