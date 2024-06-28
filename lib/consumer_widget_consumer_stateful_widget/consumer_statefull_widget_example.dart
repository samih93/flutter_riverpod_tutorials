import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/consumer_widget_consumer_stateful_widget/cosumer_widget_example.dart';

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
    print(ref.read(mysTringProvider));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
