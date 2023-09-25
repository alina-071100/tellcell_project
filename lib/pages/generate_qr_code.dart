// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class GenerateQRCode extends StatefulWidget {
//   const GenerateQRCode({super.key});

//   @override
//   GenerateQRCodeState createState() => GenerateQRCodeState();
// }

// class GenerateQRCodeState extends State<GenerateQRCode> {
//   final String userId = "123456";
//   TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
      
//       return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               QrImageView(
//                 data: userId,
//                 version: QrVersions.auto,
//                 size: 200.0,
//               ),
//               const SizedBox(height: 20.0),
//               Text(
//                 'User ID: $userId',
//                 style: const TextStyle(fontSize: 20.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
