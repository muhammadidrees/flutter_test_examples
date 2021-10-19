part of 'navigation.dart';

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key("show-dialog-button"),
      child: const Text("Show Dialog"),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Alert"),
            content: Text("You have been alerted!"),
          ),
        );
      },
    );
  }
}
