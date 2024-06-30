import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/state_provider/state_provider_example%202/screens/screen1.dart';
import 'package:youtube_riverpod_tutorials/state_provider/state_provider_example%202/screens/screen2.dart';
import 'package:youtube_riverpod_tutorials/state_provider/state_provider_example%202/screens/screen3.dart';

final currentMainIndexProvider = StateProvider<int>((ref) {
  return 1;
});

class StateProviderExample2 extends ConsumerWidget {
  StateProviderExample2({super.key});

  final List<Widget> screens = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  final bottomItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.location_city), label: "city"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.holiday_village), label: "village"),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateProviderExample 2"),
      ),
      body: screens[ref.watch(currentMainIndexProvider)],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems,
        currentIndex: ref.watch(currentMainIndexProvider),
        onTap: (index) {
          ref.read(currentMainIndexProvider.notifier).update((state) => index);
        },
      ),
    );
  }
}
