// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  Color bgColor = const Color(0xffFCFCFC);
  Color appBlack = const Color(0xff212C2E);
  Color appOrange = const Color(0xffFF6F52);
  bool click = true;
  String text = "0.00 Դ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'ԳՈՌ',
                  style: TextStyle(
                      color: appBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.chevron_right_outlined, color: appBlack)
              ],
            ),
            Text(
              'էքսպերտ',
              style: TextStyle(color: appBlack, fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: appBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: appBlack,
            ),
          ),
        ],
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 129, 129, 129),
            // color: Color(0xffF3F5F5),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Color(0xff37424A),
            ),
          ),
        ),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          balance(),
          services(),
          operationText(),
          operationsWidget(),
          addButtonText(),
          // addButton(),
        ],
      ),
    );
  }

  Widget balance() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xffF3F5F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.remove_red_eye_sharp),
                    ],
                  ),
                  Text('Հաշվեկշիռ'),
                  Text('0.00 Դ'),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            'Համալրել',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xff6FD8FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'VISA | TELCELL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.square, color: Colors.white, size: 20),
                  Text(
                    'COMING SOON',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget services() {
    return SizedBox(
      height: 150,
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          WalletCard(
              title: 'Տրանսպորտ',
              subtitle: 'ուղետոմսեր',
              color: Color.fromRGBO(42, 195, 167, 1),
              imageURL: ''),
          WalletCard(
              title: 'Իվենթներ',
              subtitle: '',
              color: Color.fromARGB(255, 198, 116, 239),
              imageURL: ''),
          WalletCard(
              title: 'Տերմինալից',
              subtitle: 'համալրված գումարը՝ այստեղ',
              color: Colors.orange,
              imageURL: ''),
          WalletCard(
              title: 'Վարկ',
              subtitle: 'մեքենայի գրավադրմամբ',
              color: Color.fromARGB(255, 198, 116, 239),
              imageURL: ''),
          WalletCard(
              title: 'Զգոնությունդ',
              subtitle: 'մի կորցրու',
              color: Color.fromARGB(255, 239, 157, 69),
              imageURL: ''),
          WalletCard(
              title: 'Բոլոր քարտերդ՝',
              subtitle: 'մեկ տեղում',
              color: Color.fromARGB(255, 225, 150, 238),
              imageURL: ''),
          WalletCard(
              title: 'Բացել',
              subtitle: 'բանկային հաշիվ',
              color: Color.fromARGB(255, 33, 236, 243),
              imageURL: ''),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class WalletCard extends StatelessWidget {
  String title;
  String? subtitle;
  Color color;
  String imageURL;

  WalletCard(
      {required this.title,
      required this.subtitle,
      required this.color,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 15, 5, 25),
      width: 108,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Padding( padding: EdgeInsets.all(10)),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          // SizedBox(height: 8),
          Text(
            subtitle!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

Widget operationText() {
  return Padding(
    padding: EdgeInsets.only(top: 20, left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        Text('Services',
            style: TextStyle(
              fontSize: 30,
            )),
        Text(
          "View all",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget operationsWidget() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(top: 20, left: 10),
    child: Row(
      children: <Widget>[
        _icon(Icons.euro, "Payments"),
        _icon(Icons.sync_alt_rounded, "Transfer"),
        _icon(Icons.directions_bus_outlined, "Transport"),
        _icon(Icons.payment_rounded, "Loans"),
        _icon(Icons.event, "Events"),
        _icon(Icons.upload_rounded, "Withdrawal"),
        _icon(Icons.handshake_outlined, "Partners"),
      ],
    ),
  );
}

Widget _icon(IconData icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, '/transfer');
        },
        child: Container(
          height: 100,
          width: 100,
          // margin: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 246, 241, 241),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon, size: 30,
                color: Color.fromARGB(
                    255, 247, 128, 0), // Change this to the desired color
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff76797e)),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget addButtonText() {
  return Padding(
    padding: EdgeInsets.only(top: 20, left: 15),
    child: Column(
      children:  [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text('Favorites',
                style: TextStyle(
                  fontSize: 30,
                )),
            Text(
              "View all",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        addButton(),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
          //  Padding(padding: EdgeInsets.only(right: 30,left: 20),), 
            Text("Add",style: TextStyle(
              fontSize: 20, 
            ),),
          ],
        ),
      ],
    ),
  );
}

Widget addButton() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 300, 0),
      decoration: BoxDecoration(color: Color.fromARGB(255, 198, 194, 194), shape: BoxShape.circle),
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.add), color: Colors.black, iconSize: 30,)
      )  
  );
}



// Widget addButton() {
//   return Column(
//      mainAxisAlignment: MainAxisAlignment.end,
//     children: <Widget>[
//       GestureDetector(
//         onTap: () {

//         },
        
//         child: Container(
//     margin: EdgeInsets.all(10),
//     decoration: const BoxDecoration(
      
//       color: Color.fromARGB(255, 218, 214, 214),
//       shape: BoxShape.circle,
//     ),
//     child: IconButton(
//       iconSize: 25,
//       onPressed: () {},
//       icon: const Icon(
//         Icons.add,
//         color: Color(0xff37424A),
//       ),
//     ),
//     Text(
//                 'Add',
//                 style: TextStyle(
//                   color: Color(0xff37424A),
//                   fontSize: 16,
//                 ),
//               ),
//     ),
//   ),
//     ],
//     //  child: [
//     //   Text("Add",      style: TextStyle(
//     //                 fontSize: 15,
//     //                 fontWeight: FontWeight.w600,
//     //                 color: Color(0xff76797e)
//     //                 ),
//     //           ),
//     //  ],
//         );
    
//   // SizedBox(width: 20),
// }

//  body: Center(
//   child: ElevatedButton(
//     onPressed: () {
//       print('Add button pressed');
//     },
//     child: Text('Add'),
//   ),
// GestureDetector(
//   onTap: () {
//     setState(() {
//       isFavorite = !isFavorite;
//     });
//   },
//   child: Icon(
//   Icons.add,
//     color: isFavorite ? Colors.red : Colors.grey,
//   ),
// ),
//  ),
