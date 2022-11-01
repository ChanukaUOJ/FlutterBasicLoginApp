import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Account.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appBar
      appBar: AppBar(
        title: const Text('Login Page'),
        leading: IconButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This is leading')),
            );
          },
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.favorite_outline),
              tooltip: 'Add to Favourite',
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to Favourite')),
                );
              },
          ),
          IconButton(
              icon: const Icon(Icons.close),
              tooltip: 'Close the window',
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Closed!')),
                );
              },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 300,
            margin: const EdgeInsets.symmetric(vertical: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Account', style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    width: 200,
                    child: Image.asset('assest/logo.png'),
                  ),

                  Column(

                    children: [

                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors.green,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.lightGreen,
                          ),
                          //border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        ),
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),

                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          //border: UnderlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.green,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.lightGreen,
                          ),
                          //border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        ),
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),


                    ],


                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: (){
                        checkAccountDetails();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10)
                      ),
                      child: const Text('Login', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
  
  void checkAccountDetails(){
    
    if(_usernameController.text == 'Admin' && _passwordController.text == '12345'){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Account(),));
    }
    else{
      alertMessage(context);
    }
  }

  alertMessage(BuildContext context){

    Widget okButton = ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Text('Ok'),

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
    );

    AlertDialog alertDialog = AlertDialog(
      title: const Text('Error', style: TextStyle(
        color: Colors.green,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
      content: const Text('Invalid Username or Password'),
      actions: [
        okButton,
      ],
      backgroundColor: Colors.white,
    );

    showDialog(context: context,
        builder: (BuildContext context){
      return alertDialog;
      }
    );
  }
}
