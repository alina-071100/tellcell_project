import 'package:first_project/helpers/colors.dart';
import 'package:first_project/pages/market_service.dart';
import 'package:first_project/pages/transport_page.dart';
import 'package:first_project/widgets/other_services.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.chevron_right_outlined, color: Colors.black),
              Text('Expert',
                  style: TextStyle(color: Colors.black, fontSize: 14))
            ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
            alignment: Alignment.centerRight,
          ),
          IconButton(
              onPressed: () {},
              alignment: Alignment.centerLeft,
              icon: const Icon(Icons.search),
              color: Colors.black),
        ],
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black12),
            child: const Icon(Icons.person, color: Colors.black),
          ),
        ),
      ),
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appOrange,
        unselectedItemColor: Colors.grey,
        elevation: 7,
        onTap: (int index) {
          // Navigator.push(
          //     // context,
          //     // MaterialPageRoute(
          //     // builder: (context) => MarketPage(),
          //     // ),
          //     );
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'BON'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR code'),
          BottomNavigationBarItem(
              icon: Icon(Icons.museum_sharp), label: 'Banking'),
        ],
      ),
    );
  }




  Widget body() {
    return getBody();
  }

  Widget getBody() {
    switch (currentTab) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: [
              balance(),
              statement(),
              OtherServices(),
            ],
          ),
        );
      case 1:
        return MyMarketApp();

      default:
        return Container();
    }
  }

  Widget balance() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 6,
            child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.remove_red_eye_sharp),
                        ],
                      ),
                      const Text('Balance'),
                      const Text('6.00 Դ',
                          style:
                              TextStyle(fontSize: 20, color: Colors.black45)),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber.shade900,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                'Replenish',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      )
                    ])),
          ),
          Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('VISA|TELCELL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Column(children: [
                      Icon(Icons.square, color: Colors.white, size: 40),
                      Padding(
                        padding: EdgeInsets.only(left: 23),
                        child: Row(children: [
                          Icon(Icons.square, color: Colors.white, size: 20)
                        ]),
                      ),
                    ]),
                    Text('COMING SOON',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget statement() {
    return SizedBox(
        height: 180,
        width: MediaQuery.of(context).size.width,
        child: ListView(
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              statementButtons(
                  title: 'Տրանսպորտ',
                  subtitle: 'Ուղետոմսեր',
                  bgColor: Colors.green,
                  imageURL:
                      "https://freepngimg.com/thumb/car/3-2-car-free-download-png.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TransportPage(),
                      ),
                    );
                  }),
              statementButtons(
                  title: 'Իվենթներ',
                  subtitle: '',
                  bgColor: Colors.purple,
                  imageURL:
                      'https://meetings.skift.com/wp-content/uploads/2018/11/510x322-h2-images-EVENT-PLANNING-TEMPLATES.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Տերմինալից',
                  subtitle: 'համալրված գումարը այստեղ',
                  bgColor: Colors.amber.shade900,
                  imageURL:
                      'https://www.pngkit.com/png/full/201-2012423_piggybank-glass-piggy-bank.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Վարկ',
                  subtitle: 'մեքենայի գրավադրմամբ',
                  bgColor: Colors.purple,
                  imageURL:
                      'https://telcell.am/images/loan_block/1/16911395938865.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Զգոնությունդ',
                  subtitle: 'մի կորցրու',
                  bgColor: Colors.orange,
                  imageURL:
                      'https://telcell.am/images/loan_block/1/16911395939325.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Բոլոր քարտերդ',
                  subtitle: 'մեկ տեղում',
                  bgColor: Colors.purple,
                  imageURL:
                      'https://pngimg.com/uploads/credit_card/credit_card_PNG187.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Բացել',
                  subtitle: 'բանկային հաշիվ',
                  bgColor: Colors.green.shade200,
                  imageURL: 'https://pngimg.com/uploads/safe/safe_PNG10.png',
                  onTap: () {}),
              statementButtons(
                  title: 'BON մարքեթ',
                  subtitle: '',
                  bgColor: Colors.red,
                  imageURL:
                      'https://telcell.am/images/bon_icons/1/16879480955497.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Խաղի',
                  subtitle: 'կանոնները փոխվել են',
                  bgColor: Colors.purple,
                  imageURL:
                      'https://pngimg.com/uploads/whistle/whistle_PNG21.png',
                  onTap: () {}),
              statementButtons(
                  title: 'GLOBAL CREDIT',
                  subtitle: 'Արագ վարկ',
                  bgColor: Colors.grey,
                  imageURL:
                      'https://www.globalcredit.am/resources/globalcredit//css/images/logo_footer.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Փոխանցում<<',
                  subtitle: 'ցանկացած բանկային քարտի',
                  bgColor: Colors.orange,
                  imageURL:
                      'https://pngimg.com/uploads/credit_card/credit_card_PNG20.png',
                  onTap: () {}),
              statementButtons(
                  title: 'Ավտոս ու ես',
                  subtitle: '',
                  bgColor: Colors.black,
                  imageURL:
                      'https://purepng.com/public/uploads/large/purepng.com-ford-mustang-red-car-back-sidecarcarsvehiclevehiclestransport-561521126642ao5q4.png',
                  onTap: () {}),
            ]));
  }

  Widget statementButtons(
      {required String title,
      required String subtitle,
      required Color bgColor,
      required String imageURL,
      required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 160,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bgColor,
        ),
        child: Stack(
          children: [
            if (imageURL.isNotEmpty)
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.contain,
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget serviceSection() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(children: [
          serviceItem(
              icon: Icons.euro,
              title: 'Payments',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.sync_alt_outlined,
              title: 'Transfers',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.directions_bus_filled_outlined,
              title: 'Transport',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.payment_rounded,
              title: 'Loans',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.event_available_outlined,
              title: 'Events',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.upload_rounded,
              title: 'Withdrawal',
              bgColor: Colors.grey.shade100),
          serviceItem(
              icon: Icons.handshake_outlined,
              title: 'Partners',
              bgColor: Colors.grey.shade100),
        ]));
  }

  Widget serviceItem({
    required String title,
    required Color bgColor,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 15, 25, 25),
      // margin: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
      width: 102,
      height: 100,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(icon, color: Colors.amber.shade900, size: 30),
        Text(title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      ]),
    );
  }

  Widget historySection() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 300, 0),
            decoration: BoxDecoration(
                color: Colors.grey.shade100, shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.black,
              iconSize: 30,
            )));
  }
}
