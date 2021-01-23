part of 'page.dart';

class IdeBisnisDetailPage extends Page<IdeBisnisDetailBloc> {
  
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            flexibleSpace: Ink.image(
              fit: BoxFit.cover,
              image: const AssetImage('assets/background/content.jpg'),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('20 Desember 2020', style: textTheme.headline6.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    )),
                    Text('Mencoba Usaha Furnitur wilayah Jogya', style: textTheme.headline5.copyWith(
                      color: Colors.white
                    )),
                  ],
                ),
              ),
            ),
            expandedHeight: 400,
            collapsedHeight: 170,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Wrap(
                  spacing: 12,
                  children: ['JASA', 'SERTIFIKAT', '123 MENIT', 'KONSULTASI', 'EXCLUSIVE'].map((label) => Chip(
                    backgroundColor: colorScheme['background3'],
                    label: Text(label, style: textTheme.subtitle2.copyWith(
                      color: colorScheme['primary'],
                    ))
                  )).toList()
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    Text(bloc.str1, style: textTheme.bodyText1),
                    const SizedBox(height: 24,),
                    Text(bloc.str2, style: textTheme.bodyText1),
                    const SizedBox(height: 24,),
                    Text(bloc.str3, style: textTheme.bodyText1),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text('Ide Baru', style: textTheme.subtitle1.copyWith(
                  color: colorScheme['primary']
                )),
              ),
              SizedBox(
                height: 160,
                child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (_, i) => const SizedBox(width: 24),
                  itemBuilder: (_, i) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ContainerImage(
                        width: 120,
                        height: 120,
                        child: SizedBox()
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Ide Bisnis Usaha furniture', style: textTheme.subtitle2.copyWith(
                          color: colorScheme['primary']
                        ))
                      )
                    ],
                  )
                )
              ),
              const SizedBox(height: 24),
              ContainerList(
                containerCount: 3,
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
              const SizedBox(height: 24),
            ])
          )
        ],
      ),
    );
  }
}