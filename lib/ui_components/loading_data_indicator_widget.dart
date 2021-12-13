import 'package:flutter/material.dart';

class LoadingDataIndicatorWidget extends StatelessWidget {
  const LoadingDataIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              backgroundColor: Colors.purpleAccent,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Loading weather data...',
              style: TextStyle(
                fontSize: 19,
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
