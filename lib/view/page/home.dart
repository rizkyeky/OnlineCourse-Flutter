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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ide Bisnis', style: theme.textTheme.subtitle1),
                      Text('Wujudkan Ide Bisnis Anda', style: theme.textTheme.subtitle2,),
                    ],
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('semua', style: theme.textTheme.subtitle1)
                  )
                ],
              ),
              SizedBox(
                height: 275,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (_, index) => SizedBox(width: index != 2 ? 12 : 0),
                  itemBuilder: (context, index) => ContainerImage(
                    width: 225,
                    child: SizedBox(),
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

