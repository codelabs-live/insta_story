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
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showCostumeDialog(size);
        },
        child: Text("Click"),
      ),
    ));
  }

  showCostumeDialog(Size size) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Card(
              child: SizedBox(
                height: size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage())
                    ),
                  ), Container()],
                ),
              ),
            ),
          );
        });
  }
}
