part of 'component.dart';

class ContainerList extends StatelessWidget {

  final bool haveTile;
  final bool haveTrailing;
  final String title;
  final String subtitle;
  final List<Map> list;
  final int type;

  const ContainerList({
    this.title,
    this.subtitle,
    this.list,
    this.haveTile = true,
    this.haveTrailing = false,
    this.type = 0,
  });

  Widget containers(ThemeData theme) => SizedBox(
    height: (type == 1) ? 404 : 324,
    child: ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 12),
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
                        label: Text(list[indexList]['chip'] as String, style: textTheme.subtitle2)
                      )
                    ],
                  ),
                  const Spacer(),
                  if (type == 0) Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(list[indexList]['overline'] as String ?? '', style: textTheme.headline4.copyWith(
                        fontSize: 18
                      ),),
                      Text(list[indexList]['title'] as String, style: textTheme.headline4.copyWith(
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
                  child: Text(list[indexList]['title'] as String, style: textTheme.subtitle1)),
                Text(list[indexList]['subtitle'] as String, style: textTheme.subtitle2)
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
          title: title != null ? Text(title, style: textTheme.headline6.copyWith(
              color: theme.primaryColor
            )) : null,
          subtitle: subtitle != null ? Text(subtitle, style: textTheme.bodyText2,) : null,
          trailing: haveTrailing ? TextButton(
            onPressed: () {},
            child: const Text('semua'),
          ) : null,
        ),
        containers(theme),
      ],
    ) : containers(theme);
  }
}