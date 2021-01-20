part of 'page.dart';

class TabPage extends StatelessWidget {

  final Widget homePage = HomePage();
  final Widget kategoriPage = const Center(child: Icon(Icons.apps),);
  final Widget mainPage = const Center(child: Icon(Icons.apps),);
  final Widget keranjangPage = const Center(child: Icon(Icons.shopping_cart_outlined),);
  final Widget profilePage = const Center(child: Icon(Icons.person),);

  final List<Widget> pages = [];
  final ValueNotifier<int> setTab = ValueNotifier(0);

  TabPage({
    Key key,
  }) : super(key: key) {
    pages.addAll([
      homePage, 
      kategoriPage, 
      mainPage,
      keranjangPage, 
      profilePage
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
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) => 
            SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
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
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: theme.primaryColor,
          unselectedItemColor: const Color(0xFF22B9FC),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/gem.png',
                height: 32,
                width: 32,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/setting.png',
                height: 32,
                width: 32,
              ), 
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/bee.png',
                height: 40,
                width: 40,
              ), 
              label: 'App',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/profile.png',
                height: 32,
                width: 32,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/logo/dollar.png',
                height: 35,
                width: 32,
              ),
              label: 'Dollar',
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