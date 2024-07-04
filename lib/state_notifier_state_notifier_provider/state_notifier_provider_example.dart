import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/state_notifier_state_notifier_provider/employee_controller%201.dart';

class StateNotifierProviderExample extends ConsumerWidget {
  const StateNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var employees = ref.watch(employeesProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("State Notifier Provider"),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (value) {
                ref.read(employeesProvider.notifier).add(value.trim());
              },
            ),
            ...employees.map((e) => ListTile(
                  title: Text(e),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      ref.read(employeesProvider.notifier).delete(e);
                    },
                  ),
                ))
          ],
        ));
  }
}
