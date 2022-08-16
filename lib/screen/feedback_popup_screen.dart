import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackPopupScreen extends StatefulWidget {
  const FeedbackPopupScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackPopupScreen> createState() => _FeedbackPopupScreenState();
}

class _FeedbackPopupScreenState extends State<FeedbackPopupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),

            Text(
              '          How was your order\n experiences from it Momma?',
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.blue,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 75, right: 75),
              child: ElevatedButton(
                onPressed: () => '1',
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff6A90F2),
                    minimumSize: const Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    )),
                child: Text(
                  'Submit',
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Not now! May be later',
                  style: GoogleFonts.roboto(
                    color: Color(0xff9A98A8),
                    fontSize: 20,
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 70),
              elevation: 0,
              child: Center(
                child: Container(
                    child: Text(
                  'ــــــــــــ',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
