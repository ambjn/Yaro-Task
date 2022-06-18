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
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          centerTitle: true,
          leading: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_circle_left,
                color: Colors.black,
                size: 35,
              )),
          title: const Text(
            "Invest",
            style:
                TextStyle(fontSize: 30, letterSpacing: 1, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Explore"),
                  Text("Portfolio"),
                  Text("Watchlist")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              width: double.infinity,
              height: 50,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.indigo,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.white),
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
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
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
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Text("15,360.6"),
                                        Text("-2.11")
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
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(50)),
                          height: 30,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("See All")),
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
                                                  ),
                                                  SizedBox(width: 50),
                                                  Text(
                                                    "2460",
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
                                                  Text(
                                                    "Reliance",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                  SizedBox(width: 50),
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
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("See All")),
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
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      "2460",
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
                                        color: Colors.black45,
                                      ),
                                    ),
                                    SizedBox(width: 50),
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
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("See All")),
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
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      "2460",
                                      style: TextStyle(color: Colors.black),
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
                                        color: Colors.black45,
                                      ),
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
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                tooltip: "Stocks",
                icon: const Icon(
                  FontAwesomeIcons.stackExchange,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                tooltip: "Mutual Funds",
                icon: const Icon(
                  FontAwesomeIcons.s,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                tooltip: "Fix Deposit",
                icon: Icon(
                  FontAwesomeIcons.ticket,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
