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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const CircleAvatar(
              radius: 50,
            ),
            Text('USER NAME',
              textAlign: TextAlign.center,
              style: theme.textTheme.headline6.copyWith(
                color: theme.primaryColor
              )
            ),
            Text('08524575556, Email@gmail.com', 
              textAlign: TextAlign.center,
              style: theme.textTheme.subtitle2
            ),
            const SizedBox(height: 12,),
            Row(
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
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 180,
              child: Material(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(12),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('anda memiliki', style: theme.textTheme.bodyText1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        )),
                        Text('Rp 200.000', style: theme.textTheme.headline4),
                        Text('hanya dari program referral code', style: theme.textTheme.bodyText1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        )),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFBCE0FD)
                        ),
                        Row(
                          children: [
                            Text('USRENS123', style: theme.textTheme.bodyText1.copyWith(
                              color: const Color(0xFF4BD6F3),
                              fontWeight: FontWeight.normal,
                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukan kode promo',
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.normal
                ),
                filled: true,
                fillColor: const Color(0xFFE5F3FF),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward)
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Color(0xFFBCE0FD), width: 2)
                ),
                // disabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(12),
                //   borderSide: const BorderSide(color: Color(0xFFBCE0FD))
                // ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Pelatihan yang diikuti', style: theme.textTheme.bodyText1.copyWith(
              color: theme.primaryColor
            )),
            const SizedBox(height: 12),
            SizedBox(
              height: 120,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
                      splashColor: theme.primaryColor.withOpacity(0.48),
                      highlightColor: theme.primaryColor.withOpacity(0.24),
                      onTap: () {},
                      child: Center(
                        child: Icon(Icons.add, color: theme.primaryColor, size: 32)
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
                side: BorderSide(color: theme.primaryColor)
              ),
              color: const Color(0xFFE5F3FF),
              child: Text('KELUAR', style: theme.textTheme.button.copyWith(
                color: theme.primaryColor
              )),
            )
          ],
        ),
      )
    );
  }
}