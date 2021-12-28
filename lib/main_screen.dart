import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  //list image preview
  List imagePreview = [
    {
      "image": "assets/images/the-crown.png",
      "title": "The Crown",
      "color": Colors.orangeAccent,
      "fontFamily": "Billabong",
      "fontSize": 25.0
    },
    {
      "image": "assets/images/money-heist.png",
      "title": "Money Heist",
      "color": Colors.white,
      "fontFamily": "Roboto",
      "fontSize": 18.0
    },
    {
      "image": "assets/images/dark-desire.png",
      "title": "Dark Desire",
      "color": Colors.red,
      "fontFamily": "Poppins",
      "fontSize": 18.0
    },
    {
      "image": "assets/images/narcos.png",
      "title": "Narcos",
      "color": Colors.white,
      "fontFamily": "A-cuchillada",
      "fontSize": 20.0
    },
  ];

//list image popular
  List imagePopularView = [
    {"image": "assets/images/lost-in-space.png"},
    {"image": "assets/images/money-heist.png"},
    {"image": "assets/images/peaky-blinders.png"},
    {"image": "assets/images/emily-in-paris-poster.jpg"}
  ];

  //list image trending
  List imageTrendingView = [
    {"image": "assets/images/tiger-king-poster.jpg"},
    {"image": "assets/images/sex-education-poster.jpg"},
    {"image": "assets/images/6-underground-poster.jpg"},
    {"image": "assets/images/lock-and-key-poster.jpg"}
  ];

  //list image watch aganin
  List imageWatchView = [
    {"image": "assets/images/ozark-poster.png"},
    {"image": "assets/images/coffee-and-kareem-poster.jpg"},
    {"image": "assets/images/to-all-the-boys-poster.jpg"},
    {"image": "assets/images/6-underground-poster.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: pageChange(),
      ),
      bottomNavigationBar: SizedBox(
        height: 45,
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20,
                color: (index == 0) ? Colors.white : Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 8,
                    color: (index == 0) ? Colors.white : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 20,
                color: (index == 0) ? Colors.white : Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Pesquisar",
                style: TextStyle(
                    fontSize: 8,
                    color: (index == 0) ? Colors.white : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.queue_play_next,
                size: 20,
                color: (index == 0) ? Colors.white : Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Brevemente",
                style: TextStyle(
                    fontSize: 8,
                    color: (index == 0) ? Colors.white : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.file_download,
                size: 20,
                color: (index == 0) ? Colors.white : Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Download",
                style: TextStyle(
                    fontSize: 8,
                    color: (index == 0) ? Colors.white : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.toc,
                size: 20,
                color: (index == 0) ? Colors.white : Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Mais",
                style: TextStyle(
                    fontSize: 8,
                    color: (index == 0) ? Colors.white : Colors.grey),
              ),
            )
          ],
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }

//evento de click na pagina
  Widget pageChange() {
    if (index == 0) {
      return widgetList();
    }
    return Container();
  }

  Widget widgetList() {
    return Column(
      children: [
        Stack(
          children: [
            //list view widget
            mainView(),
            headerMenu(),
          ],
        ),
        preview(),
        popularView(),
        trendingView(),
        watchAgainView(),
      ],
    );
  }

  //header menu
  Widget headerMenu() {
    return Positioned(
      child: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        // ignore: avoid_unnecessary_containers
        leading: Container(
          child: Image.asset(
            "assets/images/netflix-new-icon.png",
            height: 30,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Text(
                "Programas de TV",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Text(
                "Filmes",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 20),
              child: Text(
                "Minha Lista",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //main content
  Widget mainView() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/stranger-things.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/netflix-new-icon.png",
                          width: 20, height: 20),
                      const Text(
                        "SERIES",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Text(
                    "Stranger Things".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 38, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Sinitro",
                          style: TextStyle(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.red),
                          height: 5,
                          width: 5,
                        ),
                      ),
                      const Text("Excitante",
                          style: TextStyle(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.red),
                          height: 5,
                          width: 5,
                        ),
                      ),
                      const Text("Dor", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.add, color: Colors.white),
                              Text("Minha Lista",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10))
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.white),
                            child: Center(
                              child: InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.play_arrow),
                                    Text("Reproduzir",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.info_outline, color: Colors.white),
                              Text("Info",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10))
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

//list image preview
  Widget preview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Visualização",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 126,
          child: ListView.builder(
            itemCount: imagePreview.length,
            padding: const EdgeInsets.only(top: 10, left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // ignore: avoid_unnecessary_containers
              return Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagePreview[index]['image']),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                spreadRadius: 12,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                          child: Text(
                            imagePreview[index]["title"],
                            style: TextStyle(
                              color: imagePreview[index]["color"],
                              fontWeight: FontWeight.bold,
                              fontSize: imagePreview[index]["fontSize"],
                              fontFamily: imagePreview[index]["fontFamily"],
                              shadows: const [
                                Shadow(
                                  blurRadius: 2.0,
                                  color: Colors.white,
                                  offset: Offset(0, 2.0),
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
              );
            },
          ),
        ),
      ],
    );
  }

//list popular view
  Widget popularView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            "Popular na Netflix",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: imagePopularView.length,
            padding: const EdgeInsets.only(top: 10, left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagePopularView[index]['image']),
                            fit: BoxFit.fill),
                        borderRadius:
                            const BorderRadius.all((Radius.circular(5))),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }

//list trending view
  Widget trendingView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            "Tedências",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: imageTrendingView.length,
            padding: const EdgeInsets.only(top: 10, left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(imageTrendingView[index]['image']),
                              fit: BoxFit.fill),
                          borderRadius:
                              const BorderRadius.all((Radius.circular(5)))),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }

//watch again view
  Widget watchAgainView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            "Assista Novamente",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: imageWatchView.length,
            padding: const EdgeInsets.only(top: 10, left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageWatchView[index]['image']),
                            fit: BoxFit.fill),
                        borderRadius:
                            const BorderRadius.all((Radius.circular(5))),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
