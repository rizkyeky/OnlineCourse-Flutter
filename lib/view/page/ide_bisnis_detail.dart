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
    final theme = Theme.of(context);
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: Ink.image(
              fit: BoxFit.cover,
              image: const AssetImage('assets/background/content.jpg'),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('20 Desember 2020', style: theme.textTheme.headline6.copyWith(
                      fontWeight: FontWeight.normal,
                    )),
                    Text('Mencoba Usaha Furnitur wilayah Jogya', style: theme.textTheme.headline5),
                  ],
                ),
              ),
            ),
            expandedHeight: 400,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Row(
                  children: List.generate(2, (index) => Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Chip(
                      backgroundColor: const Color(0xFFBCE0FD),
                      label: Text('JASA', style: theme.textTheme.subtitle2.copyWith(
                        color: theme.primaryColor,
                      ))
                    ),
                  ))
                ),
              )
            ])
          )
        ],
      ),
    );
  }
}