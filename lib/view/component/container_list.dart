part of 'component.dart';

class ContainerList extends StatelessWidget {

  final bool haveTile;
  final String title;
  final String subtitle;
  final List<Map> list;
  final int type;

  const ContainerList({
    this.title,
    this.subtitle,
    this.list,
    this.haveTile = true,
    this.type = 0,
  });

  Widget containers(ThemeData theme) => SizedBox(
    height: (type == 1) ? 380 : 300,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      separatorBuilder: (_, index) => SizedBox(width: index != 2 ? 24 : 0),
      itemBuilder: (context, indexList) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerImage(
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
                      Text(list[indexList]['overline'] as String ?? '', style: theme.textTheme.headline4.copyWith(
                        fontSize: 18
                      ),),
                      Text(list[indexList]['title'] as String, style: theme.textTheme.headline4.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.normal
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: (type == 1) ? 70 : null,
            child: (type == 1) ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: Text(list[indexList]['title'] as String, style: theme.textTheme.subtitle1)),
                Text(list[indexList]['subtitle'] as String ?? '', style: theme.textTheme.subtitle2)
              ],
            ) : null,
          )
        ],
      )
    ),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return haveTile ? Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title, style: theme.textTheme.headline6.copyWith(
              color: theme.primaryColor
            )),
          subtitle: Text(subtitle, style: theme.textTheme.bodyText2,),
          trailing: TextButton(
            onPressed: () {},
            child: const Text('semua'),
          ),
        ),
        containers(theme),
      ],
    ) : containers(theme);
  }
}