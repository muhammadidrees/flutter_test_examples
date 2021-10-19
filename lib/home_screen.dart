import 'package:flutter/material.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Route route() => MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ScreenNavigationButton(),
        ],
      ),
    );
  }
}
