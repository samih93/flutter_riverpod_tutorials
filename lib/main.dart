import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/change_notifier_provider/change_notifier_provider_example.dart';
import 'package:youtube_riverpod_tutorials/consumer_widget_consumer_stateful_widget/consumer_statefull_widget_example.dart';
import 'package:youtube_riverpod_tutorials/consumer_widget_consumer_stateful_widget/cosumer_widget_example.dart';
import 'package:youtube_riverpod_tutorials/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChangeNotifierProviderExample(),
    );
  }
}
