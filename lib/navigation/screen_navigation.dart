part of 'navigation.dart';

class ScreenNavigationButton extends StatelessWidget {
  const ScreenNavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
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
    return Container();
  }
}
