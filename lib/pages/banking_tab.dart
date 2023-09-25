import 'package:first_project/helpers/colors.dart';
import 'package:flutter/material.dart';

class BankingTab extends StatefulWidget {
  const BankingTab({super.key});

  @override
  State<BankingTab> createState() => _BankingTabState();
}

class _BankingTabState extends State<BankingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Banking',
                style: TextStyle(
                    color: AppColors.appBlack,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.history, color: AppColors.appBlack))
          ],
        ),
      ),
      body: body(),
    );
  }
}

Widget body() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Attached cards',
                style: TextStyle(
                    color: AppColors.appBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            TextButton(
                onPressed: () {},
                child: Text('view all',
                    style: TextStyle(color: AppColors.appBlack, fontSize: 12)))
          ],
        ),
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
            width: 248,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://bogatyr.club/uploads/posts/2023-01/thumbs/1675191290_bogatyr-club-p-sinii-abstraktnii-fon-fon-pinterest-23.jpg'),
                )),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Text('Ameria',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12))),
                Expanded(flex: 6, child: SizedBox()),
                Expanded(
                    flex: 3,
                    child: Text('flan fstan \n4083 06** **** 7013',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14))),
              ],
            ),
          ),
        ],
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.appLightGrey,
        ),
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                  image: NetworkImage(
                      'https://pngicon.ru/file/uploads/zvezda.png'),
                  width: 20,
                  height: 20),
            ),
            const Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Attach a card',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      'Attach a bank card to get access to all the services of the application',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.appOrange,
                  size: 15,
                ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 5, 0),
        child: Text('My bank accounts',
            style: TextStyle(
              color: AppColors.appBlack,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.appLightGrey,
        ),
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                  image: NetworkImage(
                      'https://pngicon.ru/file/uploads/zvezda.png'),
                  width: 20,
                  height: 20),
            ),
            const Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Open a bank account',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      'Open a bank account right in Telcell Wallet to get access to all the services of the  application',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.appOrange,
                  size: 15,
                ))
          ],
        ),
      ),
    ],
  );
}
