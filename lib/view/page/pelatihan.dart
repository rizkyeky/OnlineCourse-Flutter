part of 'page.dart';

class PelatihanPage extends Page<PelatihanBloc> {

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
    
    final theme = Theme.of(context);

    int indexOfKategori = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pelatihan Usaha', style: theme.textTheme.headline6.copyWith(
          color: Colors.white
        )),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline), 
            onPressed: () {}
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ContainerList(
            haveTile: false,
            list: bloc.listOfContainer1,
          ),
          const SizedBox(height: 24,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Kategori Ide', style: theme.textTheme.headline6.copyWith(
              color: theme.primaryColor
            )),
            subtitle: Text('Mimpi dan Usaha adalah Kunci', style: theme.textTheme.bodyText2,),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('semua'),
            ),
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
                      backgroundColor: index == indexOfKategori ? theme.primaryColor : theme.colorScheme.primaryVariant.withOpacity(0.6),
                      label: Text(bloc.listOfKategori[index], style: theme.textTheme.subtitle2.copyWith(
                        color: index == indexOfKategori ? Colors.white : const Color(0xFF464646)
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
                ... List.generate(2, (index) => const ContainerRow())
              ],
            )
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Usaha Bidang Makanan', style: theme.textTheme.headline6.copyWith(
              color: theme.primaryColor
            ))
          ),
          ... List.generate(2, (index) => const ContainerRow())
        ],
      ),
    );
  }
}