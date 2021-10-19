part of 'navigation.dart';

class ScreenNavigationButton extends StatelessWidget {
  const ScreenNavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key("navigate-to-page2-button"),
      child: const Text("Navigate to new Screen"),
      onPressed: () {
        Navigator.of(context).push(Page2.route());
      },
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  static Route route() => MaterialPageRoute(
        builder: (_) => const Page2(),
        settings: const RouteSettings(name: "/page2"),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
