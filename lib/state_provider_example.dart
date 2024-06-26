import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myStateProvider = StateProvider<int>((ref) {
  return 10;
});

class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(myStateProvider.notifier).update((state) => (state - 1));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("StateProviderExample"),
      ),
      body: Center(child: Text("${ref.watch(myStateProvider)}")),
    );
  }
}
