import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/error_screen.dart';

final userIdProvider = StateProvider<int>((ref) {
  return 1;
});

final userFutureProvider =
    FutureProvider.family.autoDispose<dynamic, int>((ref, id) async {
  //ref.state = const AsyncValue.loading();
  final dio = Dio();
  final response = await dio
      .get('https://63b476019f50390584b174c9.mockapi.io/api/users/users/$id');
  return response.data;
});

class FutureProviderFamilyExample extends ConsumerWidget {
  const FutureProviderFamilyExample({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref.watch(userIdProvider);
    var usersFuture = ref.watch(userFutureProvider(userId));
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.refresh(userFutureProvider(userId));
            },
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(userIdProvider.notifier).update((state) => (state + 1));
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(userIdProvider.notifier).update((state) => (state - 1));
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("Future provider family Example "),
      ),
      body: usersFuture.when(
        data: (data) => Text(" id =>${data["id"]} , name => ${data["name"]} "),
        error: (Object error, StackTrace stackTrace) {
          return ErrorScreen(
            retry: () {
              ref.refresh(userFutureProvider(userId));
            },
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
