import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/future_provider/future_provider_example.dart';

final counterProvider = Provider<int>((ref) {
  return 10;
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const FutureProviderExample(),
            ),
            (route) => false,
          );
        },
        child: const Text("Back "),
      ),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(child: Text("${ref.read(counterProvider)}")),
    );
  }
}
