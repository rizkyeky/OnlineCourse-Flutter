part of 'component.dart';

class ContainerRow extends StatelessWidget {

  final EdgeInsetsGeometry padding;
  final Widget openWidget;

  const ContainerRow({
    this.openWidget,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(2, (index) => 
          Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              OpenContainer(
                closedColor: Colors.transparent,
                closedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                openBuilder: (context, action) => openWidget,
                closedBuilder: (context, action) => Ink.image(
                  image: const AssetImage('assets/background/content.jpg'),
                  height: 150,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox.expand(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {},
                            child: const Icon(Icons.more_vert, color: Colors.white,)),
                        ],
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ide Usaha Furnitur', style: textTheme.subtitle1.copyWith(
                      color: colorScheme['primary'],
                      fontWeight: FontWeight.bold
                    )),
                    Text('< 10 JUTA', style: textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal
                    ))
                  ],
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}