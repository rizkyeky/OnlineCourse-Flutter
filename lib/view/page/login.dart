part of 'page.dart';

class LoginPage extends Page<EntryBloc> {

  LoginPage() : super(hasNetworkSnack: true);

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
      backgroundColor: theme.primaryColor,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: LoginPainter(),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Image.asset('assets/logo/logo.png', height: 84, width: 110),
                const SizedBox(height: 32,),
                LoginTextField(
                  hitText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val) {},
                ),
                const SizedBox(height: 24,),
                LoginTextField(
                  hitText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (val) {},
                ),
                const SizedBox(height: 12,),
                TextButton(
                  onPressed: () {}, 
                  child: Text('FORGET PASSWORD', style: theme.textTheme.subtitle1.copyWith(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.57)
                  ),)
                ),
                const SizedBox(height: 24,),
                MainButton(
                  text: 'MASUK',
                  onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => TabPage())
                  ),
                ),
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