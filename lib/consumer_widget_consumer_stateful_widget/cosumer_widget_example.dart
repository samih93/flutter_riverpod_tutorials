import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mysTringProvider = Provider<String>((ref) {
  return "Hello";
});

class CosumerWidgetExample extends ConsumerWidget {
  const CosumerWidgetExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CosumerWidgetExample"),
      ),
      body: Center(child: Text(ref.read(mysTringProvider))),
    );
  }
}
