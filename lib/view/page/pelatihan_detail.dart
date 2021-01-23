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
                    Text('Pelatihan Memasak Makanan Khas Surabaya', style: textTheme.headline5.copyWith(
                      color: Colors.white
                    )),
                  ],
                ),
              ),
            ),
            expandedHeight: 400,
            collapsedHeight: 140,
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
                  ],
                ),
              ),
              ...['Pertama', 'Kedua', 'Ketiga', 'Keempat'].map((value) => ExpansionTahapan(
                title: 'Tahapan $value',
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Icon(Icons.play_circle_outline, color: colorScheme['primary'], size: 50),
                  ),
                  const SizedBox(height: 24),
                  Text(bloc.str1, style: textTheme.bodyText1),
                ],
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text('Ide Baru', style: textTheme.subtitle1.copyWith(
                  color: colorScheme['primary']
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
                            color: colorScheme['primary']
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
              ),
              const SizedBox(height: 24),
            ])
          )
        ],
      ),
    );
  }
}

class ExpansionTahapan extends StatelessWidget {

  final List<Widget> children;
  final String title;

  const ExpansionTahapan({
    this.children,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(accentColor: colorScheme['primary'], fontFamily: 'Poppins'),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 24),
        title: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme['background3'],
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text(title, style: textTheme.subtitle1),
        ),
        childrenPadding: const EdgeInsets.all(24),
        children: children,
      ),
    );
  }
}