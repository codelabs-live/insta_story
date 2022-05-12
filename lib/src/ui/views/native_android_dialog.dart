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
    return Scaffold(body: Container(
      child: Card(
        child: Container(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    ));
  }
}
