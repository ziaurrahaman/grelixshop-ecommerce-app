import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grelix_shop/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

enum AuthMode { SignUp, Login }

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff01959c), Color(0xff24d39b)])),
        ),
        SingleChildScrollView(
          child: Container(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Flexible(
                //   child: Container(
                //       margin: EdgeInsets.only(top: 40),
                //       child: Text('Grellix Shop',
                //           style: GoogleFonts.italiana(
                //               fontSize: 40,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.white))),
                // ),
                // Flexible(
                // child:
                SizedBox(
                  height: 60,
                ),
                AuthenticationCard(),
                // )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class AuthenticationCard extends StatefulWidget {
  const AuthenticationCard({
    Key key,
  }) : super(key: key);
  @override
  _AuthenticationCardState createState() => _AuthenticationCardState();
}

class _AuthenticationCardState extends State<AuthenticationCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.SignUp;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final themecontext = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 8.0,
      child: AnimatedContainer(
        height: _authMode == AuthMode.SignUp ? 550 : 480,
        duration: Duration(microseconds: 3000),
        constraints:
            BoxConstraints(minHeight: _authMode == AuthMode.SignUp ? 550 : 480),
        width: deviceSize.width * 0.85,
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              child: Center(
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Flexible(
              child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('Grellix Shop',
                      style: GoogleFonts.ubuntu(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: themecontext.primaryColor))),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email Adress',
                            labelStyle:
                                TextStyle(color: themecontext.primaryColor),
                            prefixIcon: Icon(
                              Icons.email,
                              color: themecontext.primaryColor,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(color: themecontext.primaryColor),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: themecontext.primaryColor,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: themecontext.primaryColor,
                            )),
                      ),
                    ),
                    if (_authMode == AuthMode.SignUp)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Conform Password',
                              labelStyle:
                                  TextStyle(color: themecontext.primaryColor),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: themecontext.primaryColor,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: themecontext.primaryColor,
                              )),
                        ),
                      ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: deviceSize.width * 0.50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: HomeScreen()));
                        },
                        color: themecontext.primaryColor,
                        child: Text(
                          _authMode == AuthMode.SignUp ? 'SignUp' : 'LogIn',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          _authMode == AuthMode.SignUp
                              ? 'Already have an account ?'
                              : 'Don\'t have an account?',
                          style: TextStyle(color: themecontext.primaryColor),
                        ),
                        GestureDetector(
                          onTap: _switchAuthMode,
                          child: Text(
                            _authMode == AuthMode.SignUp ? 'LogIn' : 'SingUp',
                            style: TextStyle(
                                color: themecontext.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
