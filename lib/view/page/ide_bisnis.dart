part of 'page.dart';

class IdeBisnisPage extends Page<IdeBisnisBloc> {

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  Widget build(BuildContext context) {
    
    int indexOfKategori = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ide Bisnis', style: textTheme.headline6.copyWith(
          color: Colors.white
        )),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ContainerList(
            containerCount: 3,
            padding: EdgeInsets.zero,
            insideBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
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
                        label: Text(bloc.listOfContainer1[index]['chip'], style: textTheme.subtitle2)
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(bloc.listOfContainer1[index]['overline'], style: textTheme.headline5.copyWith(
                    color: Colors.white
                  )),
                  Text(bloc.listOfContainer1[index]['title'], style: textTheme.headline6.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Kategori Ide', style: textTheme.headline6.copyWith(
              color: colorScheme['primary']
            )),
            subtitle: Text('Mimpi dan Usaha adalah Kunci', style: textTheme.bodyText2,),
          ),
          StatefulBuilder(
            builder: (context, setState) => Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: bloc.listOfKategori.length,
                    separatorBuilder: (_, index) => const SizedBox(width: 12,),
                    itemBuilder: (_, index) => ActionChip(
                      elevation: 0,
                      pressElevation: 2,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      backgroundColor: index == indexOfKategori ? colorScheme['primary'] : colorScheme['background3'],
                      label: Text(bloc.listOfKategori[index], style: textTheme.subtitle2.copyWith(
                        color: index == indexOfKategori ? Colors.white : colorScheme['text1']
                      )),
                      onPressed: () => setState(() {
                        if (indexOfKategori != index) {
                          indexOfKategori = index;
                        }
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    )
                  ),
                ),
                ... List.generate(2, (index) => ContainerRow(
                  openWidget: IdeBisnisDetailPage(),
                  padding: const EdgeInsets.only(top: 12)
                ))
              ],
            )
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Usaha Bidang Makanan', style: textTheme.headline6.copyWith(
              color: colorScheme['primary']
            ))
          ),
          ... List.generate(2, (index) => ContainerRow(
            openWidget: IdeBisnisDetailPage(),
            padding: const EdgeInsets.only(bottom: 12)
          ))
        ],
      ),
    );
  }
}