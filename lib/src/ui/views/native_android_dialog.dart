import 'package:flutter/material.dart';
class NativeAndroidDialog extends StatefulWidget {
  const NativeAndroidDialog({Key? key}) : super(key: key);

  @override
  State<NativeAndroidDialog> createState() => _NativeAndroidDialogState();
}

class _NativeAndroidDialogState extends State<NativeAndroidDialog> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Center(
    child: ElevatedButton(onPressed: (){
showCostumeDialog();
    },
    child: Text("Click"),),
    ));
  }




  showCostumeDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'What do you want to remember?'),
                    ),
                    SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFF1BC0C5),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}




