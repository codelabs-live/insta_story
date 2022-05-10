import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: size.height*0.05),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.arrow_back_ios,size: 18,color: Colors.blue,)),
                          Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.blue),)
                        ],
                      ),
                      SizedBox(
                        height: size.height*0.03,
                      ),
                      Container(
                        height: 50,
                        child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Cisco_logo_blue_2016.svg/800px-Cisco_logo_blue_2016.svg.png',),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Expanded(
                  flex: 8,
                  child: Container(
                    width: size.width * 0.8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        Text("Log In",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Email",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
                        SizedBox(
                          height: size.height * 0.006,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              contentPadding: EdgeInsets.all(5)
                              // hintText: "Name"
                              ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Email",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
                        SizedBox(
                          height: size.height * 0.006,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              contentPadding: EdgeInsets.all(5)
                              // hintText: "Name"
                              ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)
                              ))
                            ),
                            child: Container(
                              width: size.width,
                              child: Center(child: Text("Log In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                            )),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('Forgot password?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.blue),)),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Align(
                            alignment: Alignment.topLeft, child: Text('Help',style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.w500),)),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Row(
                          children: [
                            Text("Don't have an account? ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            InkWell(child: Text("Sign up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.blue),))
                          ],
                        ),
                      ],
                    ),
                  )),
              Expanded(flex: 1, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
