part of 'page.dart';

class IdeBisnisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ide Bisnis', style: theme.textTheme.headline6.copyWith(
          color: Colors.white
        )),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_box_outlined), 
            onPressed: () {}
          )
        ],
      ),
    );
  }
}