import 'package:flutter/material.dart';

class TransactionListDesign extends StatefulWidget {
  const TransactionListDesign({Key? key}) : super(key: key);

  @override
  State<TransactionListDesign> createState() => _TransactionListDesignState();
}

class _TransactionListDesignState extends State<TransactionListDesign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Expanded(
                    flex:4,
                    child: Container(
                  color: Colors.blue,
                )),
                Expanded(
                    flex:6,child: Container(
                  color: Colors.black12,
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: size.height*0.09),
                      child: ListView(
                  children: [

                  ],
                ),
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.blue,
              width: size.width,
              height: size.height*0.1,
            ),
          ),
        ],
      ),
    );
  }
}
