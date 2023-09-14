import 'package:flutter/material.dart';

class OtherServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Services',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  Text('view all'),
                ]),
          ),
          serviceSection(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Favorites',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  Text('view all'),
                ]),
          ),
          historySection(),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add'),
                ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  Text('view all'),
                ]),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Special offers',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ]),
          ),
          advertisementSection(),
        ],
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
      margin: const EdgeInsets.all(5),
      // margin: const EdgeInsets.symmetric(horizontal: 9),

      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
      width: 102,
      height: 100,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(icon, color: Colors.amber.shade900, size: 30),
        Text(title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
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

    Widget advertisementSection() {
    return SizedBox(
        height: 150,
        child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
          children: [
          specialOffers(
              title: 'Անվճար առաքում',
              bgColor: Colors.purple.shade300,
              imageURL:
                  'https://www.evoca.am/images-cache/cards/1/1686231998116/415x261.png', 
                  
                                    onTap: () {} ),
          specialOffers(title: '30% զեղչ', bgColor: Colors.purple, imageURL: 'https://www.evoca.am/images-cache/sliders/1/16178037539626/79381d3e68fdf7ec25c5837a19ce5821-577x486.jpg',
            onTap: () {}),
          specialOffers(
              title: 'Նվեր՝ պիցցա',
              bgColor: Colors.amber.shade900,
              imageURL: 'https://telcell.am/images/header_block/1/1687700329616.png',  onTap: () {}),
          specialOffers(
              title: '20% բոնուս', bgColor: Colors.purple, imageURL: '',  onTap: () {}),
          specialOffers(
              title: '1000 դրամ զեղչ', bgColor: Colors.orange, imageURL: '',  onTap: () {}),
          specialOffers(
              title: '1000 դրամ զեղչ', bgColor: Colors.purple, imageURL: '',  onTap: () {}),
          specialOffers(
              title: 'Անվճար առաքում',
              bgColor: Colors.green.shade200,
              imageURL: '',  onTap: () {}),
          specialOffers(
              title: 'Նվեր՝ Yan (250մլ)', bgColor: Colors.red, imageURL: '',  onTap: () {}),
        ]));
  }

  Widget specialOffers(
      {required String title,
      required Color bgColor,
      required String imageURL,
      required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 190,
        // height: 120,
        padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15)),
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
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              // Text(title,
              //     style: const TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white)),
            ]
            ),
           Image.network(imageURL,
           
                  fit: BoxFit.cover, 
                ),
                 Positioned(
                top: 20,
                left: 10,
                child: Text(title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16, 
                    fontWeight: FontWeight.bold, 
                  ),
                )
                 )
          ],
        ),
      ),
    );
  }

}
