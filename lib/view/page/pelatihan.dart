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
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ContainerList(
            haveTile: false,
            list: bloc.listOfContainer1,
          ),
          const SizedBox(height: 24,),
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
                    )
                  ),
                ),
                ... List.generate(4, (index) => const ContainerTile())
              ],
            )
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  color: theme.colorScheme.primaryVariant,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: theme.primaryColor.withOpacity(0.48),
                    highlightColor: theme.primaryColor.withOpacity(0.24),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/logo/musik.svg',
                            color: Colors.white,
                            width: 24,
                          ),
                          const SizedBox(width: 12,),
                          Text('MUSIK', style: theme.textTheme.bodyText1.copyWith(
                            color: Colors.white,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12,),
              Expanded(
                child: Material(
                  color: theme.colorScheme.primaryVariant,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: theme.primaryColor.withOpacity(0.48),
                    highlightColor: theme.primaryColor.withOpacity(0.24),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/logo/musik.svg',
                            color: Colors.white,
                            width: 24,
                          ),
                          const SizedBox(width: 12,),
                          Text('MUSIK', style: theme.textTheme.bodyText1.copyWith(
                            color: Colors.white,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}