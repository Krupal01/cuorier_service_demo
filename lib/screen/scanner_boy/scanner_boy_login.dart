import 'package:flutter/material.dart';

class ScannerBoyLogin extends StatelessWidget {
  static const route = "/scanner_boy_login";
  const ScannerBoyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        height: 500,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text("scanner boy"),
            ],
          ),
        ),
      ),
    );
  }
}
