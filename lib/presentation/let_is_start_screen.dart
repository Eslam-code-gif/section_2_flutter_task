import 'package:flutter/material.dart';

class LetIsStartScreen extends StatefulWidget {
  const LetIsStartScreen({super.key});

  @override
  State<LetIsStartScreen> createState() => _LetIsStartScreenState();
}

class _LetIsStartScreenState extends State<LetIsStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F5F4),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90,),
            Image.asset("assets/photo.png",
            width: 301.70001220703125,
              height: 342.862548828125,
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome To \nDo It !",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Ready to conquer your tasks? Let's Do \nIt together.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff6E6A7C),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
              ],
            ),
            SizedBox(height: 55,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(331, 48.01129913330078),
                backgroundColor: Color(0xff149954),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                )
              ),
                onPressed: (){},
                child: Text("Let’s Start",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffffffff),
                ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
