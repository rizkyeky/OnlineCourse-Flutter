part of 'component.dart';

class ContainerList extends StatelessWidget {

  final String title;
  final String subtitle;
  final List<Map> list;
  final int type;

  const ContainerList({
    this.title,
    this.subtitle,
    this.list,
    this.type = 0,
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
            itemCount: list.length,
            separatorBuilder: (_, index) => SizedBox(width: index != 2 ? 24 : 0),
            itemBuilder: (context, indexList) => ContainerImage(
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
                          label: Text(list[indexList]['chip'] as String, style: theme.textTheme.subtitle2)
                        )
                      ],
                    ),
                    const Spacer(),
                    if (type == 0) Column(
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