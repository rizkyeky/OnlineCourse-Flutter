part of 'page.dart';

class EntryPage extends Page<EntryBloc> {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  bool hasNetworkInfo() => false;
  
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Material(
      color: theme.primaryColor,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset('assets/background/back.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.multiply,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Spacer(),
                Image.asset('assets/logo/logo.png', height: 84, width: 110),
                const Spacer(flex: 2,),
                SizedBox(
                  height: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Aplikasi', style: theme.textTheme.subtitle1.copyWith(
                        fontSize: 18,
                        color: Colors.white
                      ),),
                      Text('yang dapat mewujudkan impian', style: theme.textTheme.subtitle2.copyWith(
                        fontSize: 18,
                        color: Colors.white
                      ),),
                      Text('dan cita-citamu', style: theme.textTheme.subtitle2.copyWith(
                        fontSize: 18,
                        color: Colors.white
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                RaisedButton(
                  color: theme.accentColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14, horizontal: 32 
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                  child: Text('LOGIN', style: theme.textTheme.button.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}