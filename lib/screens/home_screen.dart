import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 40,
          leading: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.circleLeft,
                color: Colors.black,
                size: 30,
              )),
          title: const Text(
            "Invest",
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.indigo,
              indicatorWeight: 4,
              labelColor: Colors.indigo,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: 'Explore',
                ),
                Tab(
                  text: 'Portfolio',
                ),
                Tab(
                  text: 'Watchlist',
                )
              ]),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              width: double.infinity,
              height: 50,
              child: TextField(
                controller: controller,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.indigo,
                    suffixIcon:
                        const Icon(Icons.search, color: Colors.white, size: 20),
                    hintText: 'search',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Popular Indices
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: const [
                  Text(
                    "Popular Indices",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 120,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                height: 50,
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "NSE NIFTY 50",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "15,360.6",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "-2.11",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // YARO's Weekly Trending
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "YARO's Weekly Trending",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.indigo.shade300),
                              ),
                              onPressed: () {},
                              child: const Text("See All")),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    height: 80,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.indigo.shade100,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(10),
                                height: 100,
                                width: 250,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          "https://www.gurpreetsaluja.com/wp-content/uploads/2020/09/HDFC-LOGO.png",
                                          width: 60,
                                          height: 60,
                                          alignment: Alignment.topLeft,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Reliance industries limited",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Text(
                                                    "2460",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text("Reliance",
                                                      style: TextStyle(
                                                          color: Colors.black45,
                                                          fontSize: 15)),
                                                  Text(
                                                    "-2%",
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          );
                        }),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Gainer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.indigo.shade300),
                        ),
                        onPressed: () {},
                        child: const Text("See All")),
                  )
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://www.gurpreetsaluja.com/wp-content/uploads/2020/09/HDFC-LOGO.png",
                            width: 60,
                            height: 60,
                            alignment: Alignment.topLeft,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Reliance industries limited",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "2460",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Reliance",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 15),
                                    ),
                                    Text(
                                      "-2%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            // Top Loser
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Loser",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.indigo.shade300),
                        ),
                        onPressed: () {},
                        child: const Text("See All")),
                  )
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://www.gurpreetsaluja.com/wp-content/uploads/2020/09/HDFC-LOGO.png",
                            width: 60,
                            height: 60,
                            alignment: Alignment.topLeft,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Reliance industries limited",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      "2460",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Reliance",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 15),
                                    ),
                                    Text(
                                      "-2%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.indigoAccent,
          unselectedItemColor: Colors.indigoAccent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart,
                  size: 30,
                  color: Colors.black54,
                ),
                label: 'Stocks'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.cabin,
                  size: 30,
                  color: Colors.black54,
                ),
                label: 'Mutual Funds'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.deck,
                  size: 30,
                  color: Colors.black54,
                ),
                label: 'Fix Deposits'),
          ],
        ),
      ),
    );
  }
}
