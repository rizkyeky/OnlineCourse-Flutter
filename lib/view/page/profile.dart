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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const CircleAvatar(
              radius: 50,
            ),
            const SizedBox(height: 12,),
            Text('USER NAME',
              textAlign: TextAlign.center,
              style: textTheme.headline6.copyWith(
                color: colorScheme['primary']
              )
            ),
            const SizedBox(height: 12,),
            Text('08524575556, Email@gmail.com', 
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FlatButton(
                    color: colorScheme['primary'],
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text('PINJAMAN', style: textTheme.button.copyWith(
                      color: Colors.white
                    )),
                  ),
                ),
                const SizedBox(width: 24,),
                Expanded(
                  child: FlatButton(
                    color: colorScheme['background3'],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: colorScheme['primary'])
                    ),
                    onPressed: () {},
                    child: Text('TABUNGAN', style: textTheme.button.copyWith(
                      color: colorScheme['primary']
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Material(
              color: colorScheme['primary'],
              borderRadius: BorderRadius.circular(12),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text('anda memiliki', style: textTheme.subtitle1.copyWith(
                        color: Colors.white,
                      )),
                      const SizedBox(height: 6),
                      Text('Rp 200.000', style: textTheme.headline4.copyWith(
                        color: Colors.white
                      )),
                      const SizedBox(height: 6),
                      Text('hanya dari program referral code', style: textTheme.subtitle2.copyWith(
                        color: Colors.white,
                      )),
                      Divider(
                        thickness: 1,
                        height: 24,
                        color: colorScheme['background2']
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('USRENS123', style: textTheme.subtitle1.copyWith(
                            color: colorScheme['accent1'],
                          )),
                          SvgPicture.asset('assets/logo/more.svg',
                            color: Colors.white,
                            width: 24,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            MainTextField(
              hint: 'Masukan kode promo',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward)
              ),
            ),
            const SizedBox(height: 24),
            Text('Pelatihan yang diikuti', style: textTheme.subtitle1.copyWith(
              color: colorScheme['primary']
            )),
            SizedBox(
              height: 160+24.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 12),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (_, i) => const SizedBox(width: 12),
                itemBuilder: (_, i) => (i != 2) ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ContainerImage(
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(
                      width: 120,
                      child: Text('Bingkisan Daerah', style: textTheme.subtitle2)
                    ),
                  ],
                ) : SizedBox(
                  width: 120,
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    color: const Color(0xFF4BD6F3),
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      splashColor: colorScheme['primary'].withOpacity(0.48),
                      highlightColor: colorScheme['primary'].withOpacity(0.24),
                      onTap: () {},
                      child: Center(
                        child: Icon(Icons.add, color: colorScheme['primary'], size: 32)
                      ),
                    ),
                  ),
                ), 
              )
            ),
            const SizedBox(height: 24),
            Text('Ide Bisnis Favorit', style: textTheme.subtitle1.copyWith(
              color: colorScheme['primary']
            )),
            SizedBox(
              height: 120+24.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 12),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (_, i) => const SizedBox(width: 12),
                itemBuilder: (_, i) => (i != 2) ? const ContainerImage(
                  width: 120,
                  child: SizedBox()
                ) : SizedBox(
                  width: 120,
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    color: const Color(0xFF4BD6F3),
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      splashColor: colorScheme['primary'].withOpacity(0.48),
                      highlightColor: colorScheme['primary'].withOpacity(0.24),
                      onTap: () {},
                      child: Center(
                        child: Icon(Icons.add, color: colorScheme['primary'], size: 32)
                      ),
                    ),
                  ),
                ), 
              )
            ),
            const SizedBox(height: 24),
            FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: colorScheme['primary'])
              ),
              color: colorScheme['background2'],
              child: Text('KELUAR', style: textTheme.button.copyWith(
                color: colorScheme['primary']
              )),
            )
          ],
        ),
      )
    );
  }
}