import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpagewithsplashscreen/LoginPage.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Center(
        child: Container(
          width: 150,
          child: ElevatedButton(
            onPressed: (){
              backButton();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            child: const Text('Back', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ),

    );
  }
  
  void backButton(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
}
