import 'package:flutter/material.dart';
import 'package:first_project/helpers/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController(text: '+374 ');
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.appBlack,
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Sign up'),
            const Text('Create a space for your payments up'),
            const Text('Your phone number'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColors.appLightGrey,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: AppColors.appLightGrey,
                    border: InputBorder.none,
                    hintText: '+374 (**) *** ***',
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    MaskedInputFormatter('+000 (00) 000 000'),
                  ],
                  controller: phoneController,
                  
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('home');
                        // authenticate();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
