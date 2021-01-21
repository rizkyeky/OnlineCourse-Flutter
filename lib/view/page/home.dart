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
                          Text('Hello, ', style: theme.textTheme.headline6.copyWith(
                            fontWeight: FontWeight.normal
                          ),),
                          Text('Username', style: theme.textTheme.headline6,),
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
                ContainerImage(

                ),
                SizedBox(
                  height: 59,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Selamat Datang di', style: theme.textTheme.subtitle2,),
                      Text('APLIKASI PERKREDITAN RAKYAT', style: theme.textTheme.subtitle1,),
                      Text('Sebuah Aplikasi Kredit Untuk Produktif', style: theme.textTheme.subtitle2),
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
                  onPressed: () {},
                  child: Text('AJUKAN', style: theme.textTheme.button),
                )
              ],
            ),
          ),
          const SizedBox(height: 50,),
          ContainerList(
            title: 'Ide Bisnis',
            subtitle: 'Wujudkan Ide Bisnis Anda',
            list: bloc.listOfContainer1,
          ),
          ContainerRow(),
          ContainerRow(),
          const SizedBox(height: 24),
          MainButton(
            text: 'LIHAT SEMUA',
            color: theme.accentColor,
          ),
          const SizedBox(height: 24),
          ContainerList(
            title: 'Pelatihan',
            subtitle: 'Tambahkan Kemampuan Anda',
            list: bloc.listOfContainer2,
            type: 1,
          ),
          const SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('TERPOPULER', style: theme.textTheme.subtitle1),
              const SizedBox(height: 12),
              Container(
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
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}



