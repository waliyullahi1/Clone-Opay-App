
import 'package:flutter/material.dart';


class LoansPages extends StatelessWidget {

  const LoansPages({super.key}); // constructor stays const ✅

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: Container(
               
                decoration: BoxDecoration(

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset( 'assets/images/loan.png'),
                  Text(
                      'All Loan services are powered by Blue Ridge MicroFinance Bank Ltd.',
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      fontSize: 10
                    ),
                  )


                  ],
                ),
              ),
            ),
            SizedBox(height: 1,),

          ],
        )
    );
  }
}