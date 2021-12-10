import 'package:flutter/material.dart';

class ForecastRoundButtonWidget extends StatelessWidget {
  const ForecastRoundButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 42),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'FORECAST',
          style: TextStyle(fontSize: 22),
        ),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.4)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  side: BorderSide(width: 2, color: Colors.white.withOpacity(0.4)))),
        ),
      ),
    );
  }
}
