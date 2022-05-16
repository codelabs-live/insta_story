import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Center(
            child: ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context) =>
                  Container(
                    width:size.width,
                  ));
            }, child: Text("Click"),),
          ),
        ));
  }
}
