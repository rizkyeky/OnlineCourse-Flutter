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

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(84),
        child: Material(
          color: theme.primaryColor,
          child: SizedBox.fromSize(
            size: const Size.fromHeight(84),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo/logo.png', height: 36, width: 47),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Hello, ', style: textTheme.headline6.copyWith(
                            fontWeight: FontWeight.normal
                          ),),
                          Text('Username', style: textTheme.headline6,),
                        ],
                      ),
                    )
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
          SizedBox(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textBaseline: TextBaseline.alphabetic,
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
                  )
                ),
                SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Selamat Datang di', style: textTheme.subtitle2,),
                      Text('APLIKASI PERKREDITAN RAKYAT', style: textTheme.subtitle1,),
                      Text('Sebuah Aplikasi Kredit Untuk Produktif', style: textTheme.subtitle2),
                    ],
                  ),
                ),
                RaisedButton(
                  color: theme.primaryColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14, horizontal: 32 
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () => showPengajuanSheet(context, theme),
                  child: Text('AJUKAN', style: textTheme.button),
                )
              ],
            ),
          ),
          const SizedBox(height: 24,),
          ContainerList(
            title: 'Ide Bisnis',
            subtitle: 'Wujudkan Ide Bisnis Anda',
            list: bloc.listOfContainer1,
          ),
          ...List.generate(2, (index) => const ContainerRow()),
          const SizedBox(height: 12),
          MainButton(
            label: 'LIHAT SEMUA',
            color: theme.accentColor,
          ),
          const SizedBox(height: 24),
          ContainerList(
            title: 'Pelatihan',
            subtitle: 'Tambahkan Kemampuan Anda',
            list: bloc.listOfContainer2,
            type: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('TERPOPULER', style: textTheme.headline6.copyWith(
              color: theme.primaryColor
            )),
          ),
          ...List.generate(3, (index) => ContainerTile(
            openWidget: IdeBisnisDetailPage(),
          )),
          const SizedBox(height: 12),
          MainButton(
            label: 'LIHAT SEMUA',
            color: theme.accentColor,
          ),
        ],
      ),
    );
  }
}





