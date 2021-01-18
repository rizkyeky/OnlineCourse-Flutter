part of 'page.dart';

class LoginPage extends Page<EntryBloc> {
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

    return Material(
      color: theme.primaryColor,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: LoginPainter(),
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
                  child: Text('MASUK', style: theme.textTheme.button.copyWith(
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

class LoginPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
        
        final Offset center = Offset(size.width, (size.height/2) + 160);

        final Rect rectShape = Rect.fromLTWH(100, size.height-(320+160), 320, 640);
        final Gradient gradient = LinearGradient(
          colors: [Colors.transparent, const Color(0xFF22B9FC).withOpacity(0.34), const Color(0xFF22B9FC)], 
          stops: const [0, 0.5 ,1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        );  
        
        final Paint paint = Paint()
          ..shader = gradient.createShader(rectShape);

      canvas.drawCircle(center, 320, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;


}