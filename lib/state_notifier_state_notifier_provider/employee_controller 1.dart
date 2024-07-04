// Define your StateNotifier
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmployeesNotifier extends StateNotifier<List<String>> {
  EmployeesNotifier() : super([]);

  void add(String name) {
    state = [...state, name];
  }

  void delete(String name) {
    state = state.where((e) => e != name).toList();
  }
}

final employeesProvider =
    StateNotifierProvider<EmployeesNotifier, List<String>>((ref) {
  return EmployeesNotifier();
});
