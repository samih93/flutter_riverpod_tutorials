import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/change_notifier_provider/counter_controller.dart';

class CounterTextWidget extends ConsumerWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("build text");
    return Text("${ref.watch(counterControllerProvider).counter}");
  }
}
