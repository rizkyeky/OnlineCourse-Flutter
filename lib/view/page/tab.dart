part of 'page.dart';

class TabPage extends StatelessWidget {

  final Widget homePage = HomePage();
  final Widget kategoriPage = const Center(child: Icon(Icons.apps),);
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
      keranjangPage, 
      profilePage
    ]);
  }
  
  @override
  Widget build(BuildContext context) {
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
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.purple,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps), label: 'Kategori',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Akun',
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