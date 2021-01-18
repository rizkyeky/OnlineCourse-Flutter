part of 'component.dart';

class MainButton extends StatelessWidget {

  final String text;
  final Color color;
  final void Function() onPressed;

  const MainButton({
    this.text,
    this.color,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RaisedButton(
      color: color ?? theme.accentColor,
      padding: const EdgeInsets.symmetric(
        vertical: 14, horizontal: 32 
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      onPressed: onPressed ?? () {},
      child: Text(text, style: theme.textTheme.button.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold
      )),
    );
  }
}