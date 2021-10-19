part of 'navigation.dart';

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key("show-dialog-button"),
      child: const Text("Show Dialog"),
      onPressed: () {
        Navigator.of(context).push(Page2.route());
      },
    );
  }
}
