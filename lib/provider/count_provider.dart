import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count = 0;

  incrementCounter() {
    count++;
    notifyListeners();
  }

  int a = 0;
  int b = 0;
  int sum = 0;

  void initialiseA(int c) {
    a = c;
    notifyListeners();
  }

  void initialiseB(int d) {
    b = d;
    notifyListeners();
  }

  sumfunction() {
    sum = a + b;
    notifyListeners();
  }
}







//provider
//1. add provider in pubspec.yaml
//2. make class and extend change  notifier
//3. register that class either at root level (main.dart i.e. wrapping material app with multi provider and list all provider) 
//   or widget level (individually jha jha use hora h, but usse phle widget tree mein agr need h toh access ni kr payenyge)
//4. use provider in ui i.e. wrap widget in consumer(context, provider name, child)