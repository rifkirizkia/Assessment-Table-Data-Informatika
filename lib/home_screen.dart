import 'package:assessment_table_data/constant/r.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [R.colors.secondary_active, Colors.white60],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(color: R.colors.secondary_active),
                  ),
                  Text(
                    "Bitna Putri",
                    style: TextStyle(
                        color: R.colors.secondary, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 5,
                            color: Colors.black12)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "160",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(
                        "Kumpulkan Koin Hasjrat",
                        style: TextStyle(
                            fontSize: 11, color: R.colors.secondary_active),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 280,
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 0.95,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Pusatkan konten di dalam Column
                      children: [
                        Image.asset(
                          R.assets.lucky_draw,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Lucky Draw",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.book_test_drive,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Book Test Drive",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.book_service,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Book Service",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.ths,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "THS",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.catalog,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Catalog",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.calculator,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Calculator",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.claim_insurance,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Claim Insurance",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.service_berkala,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Service Berkala",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.tips_trik,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Tips & Trick",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.trade_in,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Trade In",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          R.assets.dealer_location,
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "Dealer Location",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Promotion",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "see All",
                        style: TextStyle(color: R.colors.secondary_active),
                      ))
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            R.assets.promo1,
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SizedBox(
                      width: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            R.assets.promo2,
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SizedBox(
                      width: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            R.assets.promo3,
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      )),
    );
  }
}
