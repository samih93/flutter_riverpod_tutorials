import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myStringProvider = Provider<String>((ref) {
  return "hello";
});

class ConsumerStatefullWidgetExample extends ConsumerStatefulWidget {
  const ConsumerStatefullWidgetExample({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConsumerStatefullWidgetExampleState();
}

class _ConsumerStatefullWidgetExampleState
    extends ConsumerState<ConsumerStatefullWidgetExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(myStringProvider);
  }

  @override
  Widget build(BuildContext context) {
    ref.read(myStringProvider);
    ref.watch(myStringProvider);
    return Container();
  }
}
