import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Screen1 extends ConsumerWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(child: Text("Home"));
  }
}
