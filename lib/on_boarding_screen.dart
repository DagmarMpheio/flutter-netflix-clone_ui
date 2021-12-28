// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int totalPages = 4;
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (int page) {
                currentPage = page;

                setState(() {});
              },
              children: <Widget>[
                buildPageContent(
                    image: 'assets/images/netflix-1.jpg',
                    body: 'Deseja juntar-se \n a Netflix?',
                    desc:
                        "Você não pode cadastrar-se na Netflix com esta \n app. Nós sabemos que isso é um problema. Depois \n de te tornares um membro, você pode começar \n a assistir na app.",
                    color: const Color.fromRGBO(130, 172, 38, 1)),
                buildPageContent(
                    image: 'assets/images/netflix-2.png',
                    body: 'Assita em \n qualquer dispositivo',
                    desc:
                        "Transmissão a partir do teu telefone, tablet, laptop, e TV.",
                    color: const Color.fromRGBO(255, 141, 104, 1)),
                buildPageContent(
                    image: 'assets/images/netflix-3.png',
                    body: '3,2, 1... Download!',
                    desc: "Tenha sempre algo para assistir de forma offline",
                    color: const Color.fromRGBO(195, 169, 255, 1)),
                buildPageContent(
                  image: 'assets/images/netflix-4.png',
                  body: 'Sem contratos enfadonhos',
                  desc: "Cancele em qualquer altura",
                  color: const Color.fromRGBO(195, 169, 255, 1),
                ),
              ],
            ),
            //Header
            Positioned(
              top: 5,
              left: MediaQuery.of(context).size.width * .03,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            child: Image.asset("assets/images/netflix.png"),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Ajuda",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Privacidade",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //indicator onboard
            Positioned(
              bottom: 10,
              left: MediaQuery.of(context).size.width * .03,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0; i < totalPages; i++)
                            i == currentPage
                                ? buildPageIndicator(true)
                                : buildPageIndicator(false)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * .94,
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      color: Color.fromRGBO(213, 0, 2, 1),
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
                            builder: (context) => const SignInScreen()));
                      },
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPageContent(
      {String? image,
      String? body,
      String? desc,
      Color? color,
      imagePosition}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.fill,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Text(
              body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            desc!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              height: 1.2,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: isCurrentPage ? 7.5 : 7.5,
      width: isCurrentPage ? 7.5 : 7.5,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.red : Colors.white54,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
