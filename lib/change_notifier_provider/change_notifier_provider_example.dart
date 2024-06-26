import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/change_notifier_provider/counter_controller.dart';

class ChangeNotifierProviderExample extends ConsumerWidget {
  const ChangeNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterControllerProvider).increment();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("ChangeNotifierProviderExample"),
      ),
      body: Center(
          child: Text("${ref.watch(counterControllerProvider).counter}")),
    );
  }
}
