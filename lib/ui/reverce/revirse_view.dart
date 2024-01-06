import 'package:flutter/material.dart';

import '../../reverse/reverse_funcation.dart';

class RevierseView extends StatefulWidget {
  const RevierseView({super.key});

  @override
  State<RevierseView> createState() => _RevierseViewState();
}

TextEditingController controller = TextEditingController();

class _RevierseViewState extends State<RevierseView> {
  var _reveerse = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Input Hint"),
                controller: controller,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                onPressed: () {
                  _reveerse = reverseString(controller.text);
                  print(_reveerse);
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
