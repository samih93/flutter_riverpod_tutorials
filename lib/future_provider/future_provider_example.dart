import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_riverpod_tutorials/home_screen.dart';

final userFutureProvider = FutureProvider<dynamic>((ref) async {
  final dio = Dio();
  final response = await dio
      .get('https://63b476019f50390584b174c9.mockapi.io/api/users/users');
  return response.data;
});

class FutureProviderExample extends ConsumerWidget {
  const FutureProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var usersFuture = ref.watch(userFutureProvider);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //  ref.invalidate(userFutureProvider);
            ref.refresh((userFutureProvider));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
              (route) => false,
            );
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Future provider Example "),
        ),
        body: usersFuture.when(
            data: (data) => ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => Text(data[index]["name"]),
                ),
            error: (error, stackTrace) => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator())));
  }
}
