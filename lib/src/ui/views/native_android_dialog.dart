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
            child: SizedBox(
              height: size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/gradient-dynamic-blue-lines-background_23-2148995756.jpg?w=1800&t=st=1652272285~exp=1652272885~hmac=c8be4ca72b1c915c8791d19a60913548ec663742e32c6c6e756ac95e0d6856fb'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: size.height * 0.25,
                      child: Column(
                        children: [
                          Expanded(child: Container()),
                          Expanded(child: Container()),
                          Expanded(child: Container())
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
