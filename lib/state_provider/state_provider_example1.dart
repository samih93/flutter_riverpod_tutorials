import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

class StateProviderExample1 extends ConsumerWidget {
  const StateProviderExample1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state =
          //     (ref.read(counterProvider.notifier).state + 1);
          ref.read(counterProvider.notifier).update((state) {
            print(state);
            return (state - 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("StateProviderExample 1 "),
      ),
      body: Center(child: Text("${ref.watch(counterProvider)}")),
    );
  }
}
