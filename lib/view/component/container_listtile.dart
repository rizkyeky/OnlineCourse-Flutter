part of 'component.dart';

class ContainerTile extends StatelessWidget {

  final EdgeInsetsGeometry padding;
  final Widget openWidget;

  const ContainerTile({
    this.openWidget,
    this.padding = const EdgeInsets.symmetric(vertical: 12)
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: OpenContainer(
        openColor: Colors.white,
        closedColor: const Color(0xFFEAF2F9),
        closedElevation: 0,
        openElevation: 0,
        closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        closedBuilder: (context, action) => SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Ink.image(
                image: const AssetImage('assets/background/content.jpg'),
                width: 150,
                height: 150,
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Chip(
                    backgroundColor: colorScheme['primary'],
                    label: Text('Rp. 150.000',style: textTheme.subtitle2.copyWith(
                      color: Colors.white
                    )), 
                  ),
                  SizedBox(
                    width: 170-injector.screenWidth*0.1,
                    child: Text('Pelatihan Untuk Membuat Furniture', 
                      style: textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Member', style: textTheme.bodyText2),
                ],
              ),
              const Spacer(),
            ],
          ),
        ), 
        openBuilder: (context, action) => openWidget
      )
    );
  }
}