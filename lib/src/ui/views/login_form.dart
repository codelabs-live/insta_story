import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      child: Padding(
        padding: EdgeInsets.only(top: size.height*0.3,bottom: size.height*0.3, left: size.width*0.1,right: size.width*0.1),
        child: Row(
          children: [
            Expanded(child: Container(
              color: Colors.red,
              child: Column(
                children: [

                  Text('Login'),
                  SizedBox(
                    height: size.height*0.02,
                  ),
                  Container(),
                  Container(),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Checkbox(value: true, onChanged: (ture){

                          }),Text('Remember Me')]),
                        Text('Forgot Password')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(),
                    onPressed: (){

                  }, icon: Icon(Icons.arrow_forward_ios_outlined), label: Text('Login'),)
                ],
              ),
            )),
            Expanded(child: Container(
              color: Colors.black26,
            )),
          ],
        ),
      ),
    ));
  }
}
