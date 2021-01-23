part of 'component.dart';

class MainButton extends StatelessWidget {

  final String label;
  final Color color;
  final void Function() onPressed;
  final Widget icon;

  const MainButton({
    this.label,
    this.color,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => RaisedButton(
    color: color ?? colorScheme['accent2'],
    padding: const EdgeInsets.symmetric(
      vertical: 14, horizontal: 32 
    ),
    onPressed: onPressed ?? () {},
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    child: (icon == null) ? Text(label, style: textTheme.button.copyWith(
      color: colorScheme['primary']
    )) : Wrap(
      spacing: 24,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Text(label, style: textTheme.button.copyWith(
          color: colorScheme['primary']
        )),
        icon,
      ],
    ),
  );
}