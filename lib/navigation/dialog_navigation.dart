part of 'navigation.dart';

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({Key? key}) : super(key: key);

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
