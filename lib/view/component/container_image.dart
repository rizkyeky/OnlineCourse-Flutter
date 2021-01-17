
part of 'component.dart';

class ContainerImage extends StatelessWidget {

  final ImageProvider image;
  final void Function() onTap;
  final double height;
  final Widget child;

  const ContainerImage({this.image, this.onTap, this.height, this.child});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: SizedBox(
        height: height ?? 300,
        child: Ink.image(
          fit: BoxFit.cover,
          image: image ?? const AssetImage('assets/background/content.png'),
          child: InkWell(
            onTap: onTap ?? () {},
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: child ?? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text('Belajar', style: theme.textTheme.headline4.copyWith(
                    fontWeight: FontWeight.normal
                  ),),
                  Text('Ide Bisnis', style: theme.textTheme.headline4,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}