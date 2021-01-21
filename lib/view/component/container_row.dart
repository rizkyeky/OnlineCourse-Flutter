part of 'component.dart';

class ContainerRow extends StatelessWidget {

  const ContainerRow();

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(2, (index) => 
        Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const SizedBox(height: 24,),
            ContainerImage(
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
            SizedBox(
              height: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ide Usaha Furnitur', style: theme.textTheme.subtitle1),
                  Text('< 10 JUTA', style: theme.textTheme.subtitle2)
                ],
              ),
            )
          ],
        )
      )
    );
  }
}