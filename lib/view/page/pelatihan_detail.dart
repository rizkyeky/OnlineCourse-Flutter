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
                    Text('Pelatihan Memasak Makanan Khas Surabaya', style: textTheme.headline5),
                  ],
                ),
              ),
            ),
            expandedHeight: 400,
            collapsedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Wrap(
                  spacing: 12,
                  children: ['JASA', 'SERTIFIKAT', '123 MENIT', 'KONSULTASI', 'EXCLUSIVE'].map((label) => Chip(
                    backgroundColor: const Color(0xFFBCE0FD),
                    label: Text(label, style: textTheme.subtitle2.copyWith(
                      color: theme.primaryColor,
                    ))
                  )).toList()
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    Text(bloc.str1, style: textTheme.bodyText2),
                  ],
                ),
              ),
              ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                title: Text('Tahapan Pertama', style: textTheme.subtitle1),
                childrenPadding: const EdgeInsets.all(24),
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Icon(Icons.play_circle_outline, color: theme.primaryColor, size: 50),
                  ),
                  const SizedBox(height: 24),
                  Text(bloc.str1, style: textTheme.bodyText2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text('Ide Baru', style: textTheme.bodyText1.copyWith(
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
                          child: Text('Ide Bisnis Usaha furniture', style: textTheme.subtitle2.copyWith(
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