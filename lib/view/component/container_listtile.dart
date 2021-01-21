part of 'component.dart';

class ContainerTile extends StatelessWidget {

  final EdgeInsetsGeometry padding;

  const ContainerTile({
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        clipBehavior: Clip.antiAlias,
        color: const Color(0xFFEAF2F9),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: theme.primaryColor.withOpacity(0.48),
          highlightColor: theme.primaryColor.withOpacity(0.24),
          onTap: () {},
          child: SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Ink.image(
                    image: const AssetImage('assets/background/content.jpg'),
                    width: 150,
                    height: 150,
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Chip(
                      backgroundColor: theme.primaryColor,
                      label: Text('Rp. 150.000',style: theme.textTheme.subtitle2.copyWith(
                        color: Colors.white
                      )), 
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 150,
                        maxWidth: 170,
                      ),
                      child: Text('Pelatihan Untuk Membuat Furniture', 
                        style: theme.textTheme.bodyText1,
                      ),
                    ),
                    Text('Member', style: theme.textTheme.bodyText2),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}