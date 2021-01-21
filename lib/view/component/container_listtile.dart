part of 'component.dart';

class ContainerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFEAF2F9),
        borderRadius: BorderRadius.circular(12)
      ),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/background/content.jpg',
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
                  backgroundColor: theme.primaryColor,
                  label: Text('Rp. 150.000',style: theme.textTheme.subtitle2.copyWith(
                    color: Colors.white
                  )), 
                ),
                SizedBox(
                  width: 160,
                  child: Text('Pelatihan Untuk Membuat Furniture', style: theme.textTheme.bodyText1),
                ),
                Text('Member', style: theme.textTheme.subtitle2),
              ],
            ),
            const Spacer(),
          ],
        ),
      )
    );
  }
}