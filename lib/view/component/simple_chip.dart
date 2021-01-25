part of 'component.dart';

class SimpleChip extends StatelessWidget {

  final Widget child;

  const SimpleChip({this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white
        ),
        child: child,
      ),
    );
  }
}