import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/button.dart';
import '../widgets/create_account.dart';
import '../widgets/login_inputs.dart';
import '../data_providers/auth_data_provider.dart';
import '../data_providers/auth_provider.dart';
import '../coffee_router.dart';
import '../const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, required this.scaffoldKey}) : super(key: key);

  final scaffoldKey;

  static String routeName = 'loginScreen';
  static Route<LoginScreen> route(loginScaffoldKey) {
    return MaterialPageRoute<LoginScreen>(
      settings: RouteSettings(name: routeName),
      builder: (BuildContext context) => LoginScreen(
        scaffoldKey: loginScaffoldKey,
      ),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailFieldController.text = 'me@majidhajian.com';
    _passwordFieldController.text = 'me@majidhajian.com';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: widget.scaffoldKey,
      appBar: AppBar(
        title: const Text("Login"),
        actions: [
          Image.asset(
            "assets/logo.png",
            semanticLabel: 'logo',
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: SvgPicture.asset(
                  "assets/hotbeverage.svg",
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  semanticsLabel: 'Wired Brain Coffee',
                  fit: BoxFit.fitWidth,
                ),
              ),
              LoginInputs(
                emailFieldController: _emailFieldController,
                passwordFieldController: _passwordFieldController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: darkBrown,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              CommonButton(
                onPressed: _onSubmitLoginButton,
                text: 'login',
              ),
              const CreateAccount(),
            ],
          ),
        ),
      ),
    );
  }

  bool _isFormValidated() {
    final FormState form = formKey.currentState!;
    return form.validate();
  }

  _onSubmitLoginButton() async {
    if (_isFormValidated()) {
      widget.scaffoldKey.currentState.showSnackBar(_loadingSnackBar());

      final BaseAuth auth = AuthProvider.of(context)!.auth!;
      final String email = _emailFieldController.text;
      final String password = _passwordFieldController.text;
      final bool loggedIn = await auth.signInWithEmailAndPassword(
        email,
        password,
      );

      widget.scaffoldKey.currentState.hideCurrentSnackBar();
      print(loggedIn);
      if (loggedIn) {
        // CoffeeRouter.instance.push(MenuScreen.route());
      } else {
        const snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text('Your username / password is incorrect'),
        );
        widget.scaffoldKey.currentState.showSnackBar(snackBar);
      }
    }
  }

  Widget _loadingSnackBar() {
    return SnackBar(
      content: Row(
        children: const <Widget>[
          CircularProgressIndicator(),
          SizedBox(
            width: 20,
          ),
          Text(" Signing-In...")
        ],
      ),
    );
  }
}
