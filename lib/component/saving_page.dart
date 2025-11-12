
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import 'finance_item.dart';

class SavingPage extends StatelessWidget {

  const SavingPage({super.key}); // constructor stays const ✅

  static const financeItems = [
    {'icon': Icons.clean_hands, 'label': 'OWealth'},
    {'icon': Icons.flight_takeoff_rounded, 'label': 'Targets'},
    {'icon': Icons.savings, 'label': 'SafeBox'},
    {'icon': Icons.shopping_bag, 'label': 'Fixed'},
    {'icon': Icons.business, 'label': 'Spend & Save'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.financeColor,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// LEFT
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Row(
                                children: [

                                  SizedBox(width: 5),
                                  Text(
                                    'Total Balance',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.visibility,
                                      color: Colors.white, size: 14),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '₦',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '1990',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          /// RIGHT
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Interest Credited Today',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(width: 3),

                                ],
                              ),
                              const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  ' +₦ 0.09',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                                ),
                                Icon(Icons.chevron_right,
                                    size: 12, color: Colors.white),
                              ],
                            )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 4.0,
                          right: 8.0,
                          left: 8.0,
                          bottom: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Estimate interest 88/ month, Beats 76% of others >',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 1,),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color:AppColors.financeColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(1),
                                
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Available Balance',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.grey

                                    ),
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      /// LEFT
                                      /// LEFT
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Wallet',
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                          SizedBox(height: 9),
                                          Text(
                                            'OWealth',
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 30,),
                                      /// Middle
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '₦ 0.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16
                                            ),
                                          ),
                                          SizedBox(height: 9),
                                          Text(
                                            '₦ 8,607.90',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      /// RIGHT
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: const [
                                          Row(
                                            children: [
                                              Text(
                                                '0',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Icon( Icons.arrow_forward_ios, size: 13, ),
                                            ],
                                          ),

                                          SizedBox(height: 9),
                                          Row(
                                            children: [
                                              Text(
                                                '+₦ 0.09',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Icon( Icons.arrow_forward_ios, size: 13, ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),

                    ),
                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: financeItems.map((item) {
                              return FinanceItem(
                                icon: item['icon'] as IconData,
                                label: item['label'] as String,
                              );
                            }).toList(),


                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 190,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(


                                    padding: EdgeInsets.all(12),
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: AppColors.financeColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Targets',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          color: AppColors.financeColor
                                        ),
                                        ),

                                        Text('Save daly weekly \nor monthly \ntowards your goa ',
                                          style: TextStyle(
                                              fontSize: 15,
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.w500

                                          ),
                                        ),

                                        Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: AppColors.financeColor,
                                                  minimumSize: const Size(60, 25),
                                                  padding: EdgeInsets.all(5),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                                ),
                                                onPressed: () {
                                                  print('Button  clicked!');
                                                },
                                                child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 12),)
                                            ),
                                            Image.asset( 'assets/images/nairaa.png', width: 35,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      Container(

                                        padding: EdgeInsets.all(12),
                                        // width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: AppColors.financeColor.withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('SafeBox',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.financeColor
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Your daily, weekly or \nmonthly automatic savings ',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey[700],
                                                  fontWeight: FontWeight.w500

                                              ),
                                            ),


                                          ],
                                        ),
                                      ),

                                      Container(
                                        width: double.infinity,

                                        padding: EdgeInsets.all(12),
                                        // width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: AppColors.financeColor.withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Fixed',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.financeColor
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Your set 7-1000, days or \nsavings plan  ',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey[700],
                                                  fontWeight: FontWeight.w500

                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.verified_user,
                                color: AppColors.financeColor,
                                size: 14,
                              ),
                              Text('Owealth and Savings are Powered by Blue Ridge MicroFinance Band ltd.',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),

                  ],
                ),


              ],
            ),
          ),
        ],
      )
    );
  }
}