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
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage())),
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
                const ContainerImage(

                ),
                SizedBox(
                  height: 70,
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
          const SizedBox(height: 24,),
          ContainerList(
            title: 'Ide Bisnis',
            subtitle: 'Wujudkan Ide Bisnis Anda',
            list: bloc.listOfContainer1,
          ),
          ...List.generate(2, (index) => const ContainerRow()),
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
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('TERPOPULER'),
          ),
          ...List.generate(3, (index) => const ContainerTile(
            padding: EdgeInsets.only(bottom: 12)
          )),
          const SizedBox(height: 12),
          MainButton(
            text: 'LIHAT SEMUA',
            color: theme.accentColor,
          ),
        ],
      ),
    );
  }
}





