// Define your StateNotifier

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final employeeControllerProvider =
    ChangeNotifierProvider<EmployeeController>((ref) {
  return EmployeeController();
});

class EmployeeController extends ChangeNotifier {
  List<String> employees = [];

  void add(String name) {
    employees.add(name);
    notifyListeners();
  }

  void delete(String name) {
    employees.remove(name);
    notifyListeners();
  }
}
