import 'package:first_project/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  int count = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Transport'),
        foregroundColor: AppColors.appBlack,
        backgroundColor: AppColors.bgColor,
      ),
      body: body(),
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey.shade100,
              width: 1,
              ),
            borderRadius: BorderRadius.circular(15) ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded (
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300)),
                    child: Icon(Icons.directions_bus_outlined, 
                    color: AppColors.appOrange)
                    ),
                    Text('Transport', 
                    style: TextStyle(
                      color: AppColors.appBlack, 
                      fontWeight: FontWeight.w500))
                          ]
                          ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Price per trip (AMD)\n',
                              style: TextStyle(
                                color: Colors.grey,
                              )
                            ),
                            TextSpan(text: '100 AMD',
                            style: TextStyle(
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w500
                            ))
                          ]
                        )
                      ),
                          ]
                          ),
                )
              ),

               Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'QR code expiry date (day)\n',
                              style: TextStyle(
                                color: Colors.grey,
                              )
                            ),
                            TextSpan(text: '30',
                            style: TextStyle(
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w500
                            ))
                          ]
                        )
                      ),
                          ]
                          ),
                )
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(style: BorderStyle.solid, color: Colors.blueGrey.shade100)),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Number of tickets', 
                      style: TextStyle(
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                      ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:5),
                        width: 160,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                       child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  if(count > 1) {
                                    count--;
                                  }
                                });
                              }, 
                              icon: const Icon(Icons.remove),
                              ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              '$count', 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              color: AppColors.appBlack,
                              fontSize: 14)
                              ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  count++;
                                });
                              }, 
                              icon: const Icon(Icons.add),
                              ),
                          ),
                       ]
                       )
                      )
                    ],
                  ),
                )
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: AppColors.bgColor,
                      elevation: 0,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      enableFeedback: false,
                      animationDuration: const Duration(days: 1)
                    ),
                    onPressed: () {
                      
                           showDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Container(
                                margin: EdgeInsets.only(top: 580),
                                alignment: Alignment.bottomCenter,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                        border: BorderDirectional(
                                          bottom: BorderSide(color: Colors.blueGrey.shade100))
                                      ),
                                      child:Row(
                                        children: [
                                  Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Icon(Icons.account_balance_wallet, size: 30, color: AppColors.appOrange,))
                          ),
                        Expanded(
                            flex: 7,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Telcell Wallet\n', 
                                  style: TextStyle(
                                    fontSize: 16,
                                   decorationColor: Colors.white,
                                    // fontWeight: FontWeight.w500,
                                    color: AppColors.appBlack,
                                  )
                                  ),
                                  TextSpan(text: '6 AMD',
                                  style: TextStyle(
                                     decorationColor: Colors.white,
                                    fontSize: 12,
                                    color: Colors.blueGrey.shade100
                                  )
                                  )
                                ]
                              )
                              )
                              ),
                                      ]
                                      )
                                    )
                                    ),
                              Expanded(
                                  child: Container(
                                   padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                     children: [
                                 Expanded(
                                  flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.add_card, size: 30, color: AppColors.appOrange,))
                                        ),
                                  Expanded(
                                     flex: 7,
                                      child: Text.rich(
                                        TextSpan(
                                       children: [
                                      TextSpan(text: '408306**7013\n', 
                                       style: TextStyle(
                                         fontSize: 16,
                                          decorationColor: Colors.white,
                                        // fontWeight: FontWeight.w500,
                                    color: AppColors.appBlack,
                                       )
                                        ),
                                   TextSpan(text: '408306**7013',
                                     style: TextStyle(
                                       decorationColor: Colors.white,
                                       fontSize: 12,
                                       color: Colors.blueGrey.shade100
                                         )
                                      )
                                     ]
                                     )
                                       )
                                        ),
                                          ],
                                        ),
                                      )
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                child: Icon(Icons.report_gmailerrorred, size: 25, color: AppColors.appOrange,),
                                              )
                                              ),
                                              Expanded(
                                                flex: 7,
                                                child: Text('There is a 1.5% additional commission if you make payment with card of VTB-Armenia Bank',
                                                style: TextStyle(color: Colors.grey.shade400, fontSize: 11, decorationColor: Colors.white))
                                                )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              );
                            },
                       );
                    },
                    child: Row ( 
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Icon(Icons.account_balance_wallet, size: 25, color: AppColors.appOrange,))
                          ),
                        Expanded(
                            flex: 7,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '6.00 AMD\n', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.appBlack,
                                  )
                                  ),
                                  TextSpan(text: 'Payment method: Telcell Wallet',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.appBlack
                                  )
                                  )
                                ]
                              )
                              )
                              ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.appBlack, size: 16)
                          ),
                      ],
                    )
                  )
                  )
          ]
          ),
        ),
        Spacer(flex: 9),
        Expanded(
          flex: 2,
              child:
                Container(
                   margin:EdgeInsets.only(left:15, right: 15, bottom: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appOrange,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                   ),
                   ),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    margin:EdgeInsets.only(left:15, right: 15, bottom: 15),
                    width: double.infinity,
                    child: const Text(
                       'Confirm',
                       textAlign: TextAlign.center,
                       style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                                    ),
                  ),
                                ),
                ),
              
            ),
      ],
    );
  }

}