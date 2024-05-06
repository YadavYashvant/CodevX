import 'package:codevx/widgets/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: _user != null ? _userInfo() : _googleSignInButton(),
    );
  }

  Widget _googleSignInButton() {
    return Center(
      child: SizedBox(
        height: 50,
        child: SignInButton(
          Buttons.google,
          text: "Sign up with Google",
          onPressed: _handleGoogleSignIn,
        ),
      ),
    );
  }

  Widget _userInfo() {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: IconButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(_user!.photoURL!),
                                ),
                                shape: BoxShape.circle),
                          ),
                          content:
                              Text("${_user!.displayName!}  ${_user!.email!}"),
                          actions: [
                            CupertinoDialogAction(
                                isDestructiveAction: false,
                                onPressed: () {
                                  _auth.signOut();
                                  Navigator.pop(context);
                                },
                                child: const Text("Sign out")),
                            CupertinoDialogAction(
                                isDestructiveAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel"))
                          ],
                        ));
              },
              icon: const Icon(CupertinoIcons.person)),
          middle: const Text(
            "Codev",
            style: TextStyle(color: CupertinoColors.activeGreen),
          ),
        ),
        child: const Center(
          child: HomeScreen(),
        ));
    /*
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(_user!.photoURL!),
                
              ),
              shape: BoxShape.circle
            ),
          ),
          const SizedBox(height: 15.00,),
          Text(_user!.email!),
          const SizedBox(height: 15.00,),
          Text(_user!.displayName ?? ""),
          const SizedBox(height: 15.00,),
          CupertinoButton.filled(onPressed: () => _auth.signOut(),child: const Text("Sign Out"), )
          // MaterialButton(
          //   color: Colors.red,
          //   child: const Text("Sign Out"),
          //   onPressed: _auth.signOut,
          // )
        ],
      ),
    );
    */
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
      print(_user?.displayName);
    } catch (error) {
      print(error);
    }
  }
}
