
part of 'component.dart';

class ContainerImage extends StatelessWidget {

  final ImageProvider image;
  final void Function() onTap;
  final double height;
  final double width;
  final Widget child;

  const ContainerImage({
    this.image, 
    this.onTap, 
    this.height, 
    this.width, 
    this.child
  });

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Container(
      height: height ?? 300,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12)
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: theme.primaryColor.withOpacity(0.48),
        highlightColor: theme.primaryColor.withOpacity(0.24),
        onTap: onTap ?? () {},
        child: Ink.image(
          fit: BoxFit.cover,
          image: image ?? const AssetImage('assets/background/content.jpg'),
          child: child ?? Padding(
            padding: const EdgeInsets.all(24),
            child:  Column(
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
    );
  }
}