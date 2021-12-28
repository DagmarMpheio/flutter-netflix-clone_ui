import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final textControllerUser = TextEditingController();
  final textControllerPassword = TextEditingController();

  bool isCheck = true;

  @override
  void initState() {
    super.initState();

    textControllerUser.addListener(printLatestValue);
    textControllerPassword.addListener(printLatestValue);
  }

  printLatestValue() {
    setState(() {
      if (textControllerUser.text.isNotEmpty &&
          textControllerPassword.text.isNotEmpty) {
        isCheck = true;
      } else if (textControllerUser.text.isEmpty ||
          textControllerPassword.text.isEmpty) {
        isCheck = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: Text(
              "Ajuda",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 40.0, left: 40.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(48, 45, 45, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: textControllerUser,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      focusColor: Colors.white,
                      labelText: 'Email ou número de telefone',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(10.0),
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 40.0, left: 40.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(48, 45, 45, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: textControllerPassword,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      focusColor: Colors.white,
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(10.0),
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                    color: (isCheck == true)
                        ? const Color.fromRGBO(213, 0, 2, 1)
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: Center(
                    child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Recuperar Senha",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Login está protegido pela Google reCAPTCHA para garantir que você não é um robô.",
                              style: TextStyle(color: Colors.grey)),
                          TextSpan(
                            text: 'Saber Mais',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
