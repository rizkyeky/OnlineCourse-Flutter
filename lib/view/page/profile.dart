part of 'page.dart';

class ProfilePage extends Page<ProfileBloc> {
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
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: theme.primaryColor),
              onPressed: () {},
            ),
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Text('USER NAME', style: theme.textTheme.headline6.copyWith(
                      color: theme.primaryColor
                    )),
                    Text('08524575556, Email@gmail.com', style: theme.textTheme.subtitle2),
                  ],
                ),
              ),
            ),
            expandedHeight: 200,
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FlatButton(
                      color: theme.primaryColor,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text('PINJAMAN', style: theme.textTheme.button.copyWith(
                        color: Colors.white
                      )),
                    ),
                  ),
                  const SizedBox(width: 24,),
                  Expanded(
                    child: FlatButton(
                      color: const Color(0xFFE5F3FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: theme.primaryColor)
                      ),
                      onPressed: () {},
                      child: Text('TABUNGAN', style: theme.textTheme.button.copyWith(
                        color: theme.primaryColor
                      )),
                    ),
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}