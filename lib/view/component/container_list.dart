part of 'component.dart';

class ContainerList extends StatelessWidget {

  final EdgeInsetsGeometry padding;
  final Widget Function(BuildContext, int) bottomBuilder;
  final Widget Function(BuildContext, int) insideBuilder;
  final int containerCount;

  const ContainerList({
    this.bottomBuilder,
    this.insideBuilder,
    this.containerCount,
    this.padding = const EdgeInsets.symmetric(vertical: 12)
  });

  Widget buildContainer(BuildContext context, int index) => ContainerImage(
    width: 220,
    height: 280,
    child: (insideBuilder != null) ? insideBuilder(context, index) : null
  );

  @override
  Widget build(BuildContext context) => SizedBox(
    height: (bottomBuilder != null) ? 280+80.0 : 280,
    child: ListView.separated(
      padding: padding,
      scrollDirection: Axis.horizontal,
      itemCount: containerCount,
      separatorBuilder: (_, i) => SizedBox(width: i != containerCount-1 ? 24 : 0),
      itemBuilder: (context, index) => (bottomBuilder != null) ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContainer(context, index),
          bottomBuilder(context, index),
        ],
      ) : buildContainer(context, index)
    ) ,
  );
}