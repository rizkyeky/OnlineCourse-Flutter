part of 'page.dart';

class PelatihanDetailPage extends Page<PelatihanDetailBloc> {
  
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
            pinned: true,
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
            collapsedHeight: 180,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    Text(bloc.str1, style: theme.textTheme.bodyText2),
                    const SizedBox(height: 24,),
                    Text(bloc.str2, style: theme.textTheme.bodyText2),
                    const SizedBox(height: 24,),
                    Text(bloc.str3, style: theme.textTheme.bodyText2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text('Ide Baru', style: theme.textTheme.bodyText1.copyWith(
                  color: theme.primaryColor
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 160,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (_, i) => const SizedBox(width: 12),
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
                          child: Text('Ide Bisnis Usaha furniture', style: theme.textTheme.subtitle2.copyWith(
                            color: theme.primaryColor
                          ))
                        )
                      ],
                    )
                  )
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ContainerList(
                  title: 'Kembangkan Dirimu',
                  list: bloc.listOfContainer1,
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