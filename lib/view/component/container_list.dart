part of 'component.dart';

class ContainerList extends StatelessWidget {

  final String title;
  final String subtitle;

  ContainerList({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.subtitle1.copyWith(
                  fontSize: 20,
                )),
                Text(subtitle, style: theme.textTheme.subtitle2,),
              ],
            ),
            TextButton(
              onPressed: () {}, 
              child: Text('semua', style: theme.textTheme.subtitle1)
            )
          ],
        ),
        SizedBox(
          height: 275,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, index) => SizedBox(width: index != 2 ? 24 : 0),
            itemBuilder: (context, index) => ContainerImage(
              width: 225,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 12, 18, 18),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children:  [
                        const Spacer(),
                        Chip(
                          backgroundColor: Colors.white,
                          label: Text('< 10 JUTA', style: theme.textTheme.subtitle2)
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bidang Jasa', style: theme.textTheme.headline4.copyWith(
                          fontSize: 18
                        ),),
                        Text('Mencoba Usaha\nFurnitur', style: theme.textTheme.headline4.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                        )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
        ),
      ],
    );
  }
}