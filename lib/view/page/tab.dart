part of 'page.dart';

class TabPage extends StatelessWidget {

  final Widget homePage = HomePage();
  final Widget ideBisnisPage = IdeBisnisPage();
  final Widget pelatihanPage = const Center(child: Icon(Icons.settings),);
  final Widget profilePage = const Center(child: Icon(Icons.person),);

  final List<Widget> pages = [];
  final ValueNotifier<int> setTab = ValueNotifier(1);

  TabPage({
    Key key,
  }) : super(key: key) {
    pages.addAll([
      homePage, 
      ideBisnisPage,
      pelatihanPage, 
      profilePage,
    ]);
  }
  
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    var prevTab = setTab.value;
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: setTab, 
        builder: (context, value, _) => 
        PageTransitionSwitcher(
          reverse: value > prevTab,
          transitionBuilder: (child, primary, secondary) => 
            SharedAxisTransition(
              animation: primary,
              secondaryAnimation: secondary,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            ),
          child: pages[value]
        )
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: setTab,
        builder: (context, value, child) => BottomNavigationBar(
          currentIndex: value,
          showUnselectedLabels: false,
          selectedItemColor: theme.primaryColor,
          backgroundColor: const Color(0xFFEAF2F9),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/bee.png',
                height: 40,
                width: 40,
                colorBlendMode: value == 0 ? null : BlendMode.lighten,
                color: value == 0 ? null : const Color(0xFF22B9FC).withOpacity(0.64),
              ), 
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/logo/gem.svg',
                height: 32,
                width: 32,
                color: value == 1 ? theme.primaryColor : const Color(0xFF22B9FC).withOpacity(0.64),
              ),
              label: 'Ide Bisnis',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/logo/setting.svg',
                height: 32,
                width: 32,
                color: value == 2 ? theme.primaryColor : const Color(0xFF22B9FC).withOpacity(0.64),
              ), 
              label: 'Pelatihan',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/logo/profile.svg',
                height: 32,
                width: 32,
                color: value == 3 ? theme.primaryColor : const Color(0xFF22B9FC).withOpacity(0.64),
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (setTab.value != index) {
              prevTab = setTab.value;
              setTab.value = index;
            }
          },
        ),
      ),
    );
  }
}