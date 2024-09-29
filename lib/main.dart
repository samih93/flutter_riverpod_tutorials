import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/change_notifier_provider/change_notifier_provider_example.dart';
import 'package:youtube_riverpod_tutorials/consumer_widget_consumer_stateful_widget/consumer_statefull_widget_example.dart';
import 'package:youtube_riverpod_tutorials/consumer_widget_consumer_stateful_widget/cosumer_widget_example.dart';
import 'package:youtube_riverpod_tutorials/future_provider/future_provider_example.dart';
import 'package:youtube_riverpod_tutorials/future_provider_family/future_provider_family_example.dart';
import 'package:youtube_riverpod_tutorials/home_screen.dart';
import 'package:youtube_riverpod_tutorials/state_notifier_state_notifier_provider/state_notifier_provider_example.dart';
import 'package:youtube_riverpod_tutorials/state_provider/state_provider_example%202/state_provider_example2.dart';
import 'package:youtube_riverpod_tutorials/state_provider/state_provider_example1.dart';

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
      home: const FutureProviderFamilyExample(),
    );
  }
}
