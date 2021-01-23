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

    int indexOfKategori1 = 0;
    int indexOfKategori2 = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pelatihan Usaha', style: textTheme.headline6.copyWith(
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
                      backgroundColor: index == indexOfKategori1 ? theme.primaryColor : const Color(0xFFBCE0FD),
                      label: Text(bloc.listOfKategori[index], style: textTheme.subtitle2.copyWith(
                        color: index == indexOfKategori1 ? Colors.white : const Color(0xFF464646)
                      )),
                      onPressed: () => setState(() {
                        if (indexOfKategori1 != index) {
                          indexOfKategori1 = index;
                        }
                      }),
                    )
                  ),
                ),
                ... List.generate(4, (index) => ContainerTile(
                  openWidget: PelatihanDetailPage(),
                ))
              ],
            )
          ),
          const SizedBox(height: 12),
          StatefulBuilder(
            builder: (context, setState) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      OptionButton(
                        label: 'JASA',
                        icon: SvgPicture.asset('assets/logo/gem.svg',
                          color: Colors.white,
                          height: 24,
                        ),
                        color: (indexOfKategori2 == 0) ? theme.primaryColor : null,
                        onTap: () => setState(() {
                          indexOfKategori2 = 0;
                        }),
                      ),
                      const SizedBox(width: 12),
                      OptionButton(
                        label: 'MAKANAN',
                        icon: SvgPicture.asset('assets/logo/makanan.svg',
                          color: Colors.white,
                          height: 24,
                        ),
                        color: (indexOfKategori2 == 1) ? theme.primaryColor : null,
                        onTap: () => setState(() {
                          indexOfKategori2 = 1;
                        }),
                      )
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      OptionButton(
                        label: 'MUSIK',
                        icon: SvgPicture.asset('assets/logo/musik.svg',
                          color: Colors.white,
                          height: 24,
                        ),
                        color: (indexOfKategori2 == 2) ? theme.primaryColor : null,
                        onTap: () => setState(() {
                          indexOfKategori2 = 2;
                        }),
                      ),
                      const SizedBox(width: 12),
                      OptionButton(
                        label: 'OLEHOLEH',
                        icon: SvgPicture.asset('assets/logo/oleh.svg', 
                          color: Colors.white,
                          height: 24,
                        ),
                        color: (indexOfKategori2 == 3) ? theme.primaryColor : null,
                        onTap: () => setState(() {
                          indexOfKategori2 = 3;
                        }),
                      )
                    ]
                  ),
                ),
                const SizedBox(height: 12),
                ... List.generate(4, (index) => const ContainerTile())
              ],
            )
          )
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {

  final String label;
  final Widget icon;
  final void Function() onTap;
  final Color color;

  const OptionButton({
    this.label,
    this.icon,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Material(
        color: color ?? const Color(0xFFBCE0FD),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: theme.primaryColor.withOpacity(0.48),
          highlightColor: theme.primaryColor.withOpacity(0.24),
          onTap: onTap ?? () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 12,),
                Text(label, style: textTheme.bodyText1.copyWith(
                  color: Colors.white,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}