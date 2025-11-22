import 'package:dashbord/layouts/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:dotted_line/dotted_line.dart';


class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPage();
}

class _RewardPage extends State<RewardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.only(top: 0, left: 5, right: 4),
          decoration: const BoxDecoration(
            color:  Color(0xFFCEF3EF),
            // boxShadow: [
            //   BoxShadow(color: Colors.black26, blurRadius: 10),
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rewards',
                    style:TextStyle(
                        fontSize: 25,
                      fontWeight: FontWeight.w700
                    ) ,),
                  Icon( Icons.more_horiz, ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Container(
                color: Color(0xFFF8F8FB),
                child: Column(
                  children: [

                    Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                      children: [


                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, right:0, bottom: 1, top:0  ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFCEF3EF),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          padding: EdgeInsets.only(top: 8.0, right: 8, left: 8, bottom: 40 ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [

                                      SizedBox(width: 12),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cashback ?',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.grey,
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/naira.png',
                                                width: 25,
                                              ),
                                              SizedBox(width: 4,),
                                              Text(
                                                '₦ 10.00',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.chevron_right),
                                            ],
                                          ),



                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Vouchers",
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontSize: 16,

                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: AppColors.primary
                                            ),
                                            child: Text(
                                              "₦100",
                                              style: TextStyle(

                                                fontSize: 11,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),



                                      SizedBox(height: 9,),
                                      Row(
                                        children: [
                                          Image.asset( 'assets/images/nairaa.png', width: 16,),
                                          SizedBox(width: 5,),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Icon(Icons.chevron_right),

                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),

                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 0.0,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(11),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 1.0,
                              horizontal: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //toOpay
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('./assets/images/receipt.png', width: 30,),
                                      SizedBox(height: 10),
                                      Text(
                                        'Friday  Bonus',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11
                                          ,
                        
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('./assets/images/love.png', width: 35,),
                                      SizedBox(height: 10),
                                      Text(
                                        'Refer Friend',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11
                                          ,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('./assets/images/roulette.png', width: 30,),
                                      SizedBox(height: 10),
                                      Text(
                                        'Spin & Win',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11
                                          ,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset('./assets/images/in-love.png', width: 30,),
                                      SizedBox(height: 10),
                                      Text(
                                        'Play4aChild',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11
                                          ,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),





                              ],
                            ),
                          ),
                        ),
                      ),

                      ]
                    ),

                  SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        children: [
                          Text('Welcome Bonus', style:
                            TextStyle(
                              fontWeight: FontWeight.w600
                            )
                            ,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),

                              gradient: LinearGradient(
                                begin: Alignment.centerLeft, // 👈
                                end: Alignment.centerRight,
                                stops: [0.1, 1.0], // 👈
                                colors: [
                                  AppColors.secondary, // Green
                                  Color(0xFFCEF3EF), // Light green
                                ],
                              ),
                            ),
                            child: Text('total 630 bunus',
                              style: TextStyle(
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                          7,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.style,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Betting payment',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Image.asset('assets/images/naira.png', width: 13,),
                                            Text('+20',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              color: AppColors.primary
                                            ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                              'Fund betting account with',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                            Text(
                                              ' ₦100',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                            Text(
                                              ' or more',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      // minimumSize: const Size(60, 30),
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                    ),
                                    onPressed: () {
                                      print('Button  clicked!');
                                    },
                                    child: Text('Go', style: TextStyle(color: Colors.white),)
                                )


                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                          7,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.style,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Betting payment',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Image.asset('assets/images/naira.png', width: 13,),
                                            Text('+20',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.primary
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                              'Fund betting account with',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                            Text(
                                              ' ₦100',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                            Text(
                                              ' or more',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      // minimumSize: const Size(60, 30),
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                    ),
                                    onPressed: () {
                                      print('Button  clicked!');
                                    },
                                    child: Text('Go', style: TextStyle(color: Colors.white),)
                                )


                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                          7,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.style,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Betting payment',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Image.asset('assets/images/naira.png', width: 13,),
                                            Text('+20',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.primary
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                              'Fund betting account with',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                            Text(
                                              ' ₦100',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                            Text(
                                              ' or more',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      // minimumSize: const Size(60, 30),
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                    ),
                                    onPressed: () {
                                      print('Button  clicked!');
                                    },
                                    child: Text('Go', style: TextStyle(color: Colors.white),)
                                )


                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('View More'),
                                Icon( Icons.expand_more ),
                              ],
                            )
                            
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  10.0, horizontal: 20),
                      child: Row(
                       children: [
                         Text('Hot Vouchers ',
                           style: TextStyle(
                             fontWeight: FontWeight.w800
                           ),
                         ),
                         Image.asset(
                           'assets/images/nairaa.png',
                           width: 13,
                         ),
                       ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 13,
                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Betting',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),),
                                Container(
                                 width: 25,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ],
                            ),
                            //toOpay

                            SizedBox(height: 15),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 8.0,
                              ),

                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '₦100 ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize:23,
                                      color: AppColors.primary
                                        

                                    ),
                                  ),
                                  SizedBox(height: 1,),
                                  Text('Bangbet ₦100 off ',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    width: 80,
                                    child: DottedLine(
                                      dashColor: AppColors.grey,
                                      lineThickness: 2,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('₦500 available ',
                                    style: TextStyle(
                                        fontSize: 11,

                                    ),
                                  ),

                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.primary,
                                        minimumSize: const Size(50, 25),
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                      ),
                                      onPressed: () {
                                        print('Button  clicked!');
                                      },
                                      child: Text('Use', style: TextStyle(color: Colors.white),)
                                  )

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),




                    //Icon Opa to Transfer To Bank, and Withdraw
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // 👇 Add your reusable bottom navigation bar

      bottomNavigationBar: const CustomBottomNav(currentIndex: 1),
    );
  }
}

