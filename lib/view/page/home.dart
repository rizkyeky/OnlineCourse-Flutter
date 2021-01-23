part of 'page.dart';

class HomePage extends Page<HomeBloc> {

  HomePage() : super(hasNetworkSnack: true);

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  final Size heightAppBar = const Size.fromHeight(84);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: PreferredSize(
        preferredSize: heightAppBar,
        child: Material(
          color: colorScheme['primary'],
          child: SizedBox.fromSize(
            size: heightAppBar,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo/logo.png', height: 36, width: 47),
                    Row(
                      children: [
                        Text('Hello, ', style: textTheme.headline6.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                        ),),
                        Text('Username', style: textTheme.headline6.copyWith(
                          color: Colors.white
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          CarouselSlider.builder(
            itemCount: 4, 
            options: CarouselOptions(
              aspectRatio: 1,
              viewportFraction: 1,
              autoPlay: true,
              height: 300,
            ),
            itemBuilder: (ctx, index) => ContainerImage(
              width: injector.screenWidth-(24*3),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text('Belajar', style: textTheme.headline4.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                    ),),
                    Text('Ide Bisnis', style: textTheme.headline4.copyWith(
                      color: Colors.white
                    )),
                  ],
                ),
              ),
            )
          ),
          const SizedBox(height: 24,),
          SizedBox(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Selamat Datang di', style: textTheme.subtitle2,),
                Text('APLIKASI PERKREDITAN RAKYAT', style: textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme['primary']
                ),),
                Text('Sebuah Aplikasi Kredit Untuk Produktif', style: textTheme.subtitle2),
              ],
            ),
          ),
          const SizedBox(height: 24,),
          MainButton(
            color: colorScheme['primary'],
            onPressed: () => showPengajuanSheet(context),
            label: 'AJUKAN',
            labelStyle: textTheme.button.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 24,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Ide Bisnis', style: textTheme.headline6.copyWith(
              color: colorScheme['primary'],
            ),),
            subtitle: Text('Wujudkan Ide Bisnis Anda', style: textTheme.subtitle1,),
          ),
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
          ...List.generate(2, (index) => ContainerRow(
            padding: const EdgeInsets.only(top: 24),
            openWidget: IdeBisnisDetailPage()
          )),
          const SizedBox(height: 24),
          MainButton(
            label: 'LIHAT SEMUA',
            color: colorScheme['accent2'],
          ),
          const SizedBox(height: 24),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Pelatihan', style: textTheme.headline6.copyWith(
              color: colorScheme['primary'],
            ),),
            subtitle: Text('Tambahkan Kemampuan Anda', style: textTheme.subtitle1,),
          ),
          ContainerList(
            containerCount: 3,
            padding: EdgeInsets.zero,
            bottomBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(bloc.listOfContainer2[index]['title'], style: textTheme.subtitle1.copyWith(
                    height: 1.2,
                    color: colorScheme['primary'],
                    fontWeight: FontWeight.bold,
                  ))
                ),
                const SizedBox(height: 6),
                Text(bloc.listOfContainer2[index]['subtitle'], style: textTheme.subtitle2)
              ],
            ),
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
                        label: Text(bloc.listOfContainer2[index]['chip'], style: textTheme.subtitle2)
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text('TERPOPULER', style: textTheme.headline6.copyWith(
            color: colorScheme['primary']
          )),
          ...List.generate(3, (index) => ContainerTile(
            openWidget: IdeBisnisDetailPage(),
          )),
          const SizedBox(height: 12),
          MainButton(
            label: 'LIHAT SEMUA',
            color: colorScheme['accent2'],
          ),
        ],
      ),
    );
}





