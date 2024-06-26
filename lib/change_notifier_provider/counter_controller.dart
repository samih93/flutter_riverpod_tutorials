import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterControllerProvider =
    ChangeNotifierProvider<CounterController>((ref) {
  return CounterController();
});

class CounterController extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
