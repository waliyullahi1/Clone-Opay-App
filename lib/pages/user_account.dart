import 'package:dashbord/layouts/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:dashbord/constant/colors.dart';
import 'package:dotted_line/dotted_line.dart';


class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Container(
          padding: const EdgeInsets.only(top: 14, left: 5, right: 4),
          decoration: const BoxDecoration(
            color: Color(0xFFCEF3EF),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF00B876),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "HI WALIYULLAHI",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 6, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                              color:  Color(0xFFFCEFE8),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Icon( Icons.verified, size: 13,  color: Color(0xFF774E3F) ),
                                SizedBox(width: 3,),
                                Text(
                                  "upgrade to Tier 2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color(0xFF774E3F)
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.settings_outlined, ),

                    ],
                  ),
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
                              padding: EdgeInsets.only(top: 8.0, right: 8, left: 8, bottom: 10 ),
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
                                              Row(
                                                children: [
                                                  Text(
                                                    'Total Balance ',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: AppColors.grey,
                                                    ),
                                                  ),
                                                  Icon(Icons.visibility, size: 13,)
                                                ],
                                              ),
                                              SizedBox(height: 9,),
                                              Row(
                                                children: [

                                                  SizedBox(width: 4,),
                                                  RichText(text: TextSpan(
                                                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
                                                    children: [
                                                    const TextSpan(text:   '₦', style: TextStyle(
                                                      fontSize: 18,
                                                    )),
                                                      const TextSpan(text:   '1,728', style: TextStyle(
                                                        fontSize: 22,
                                                      )), const TextSpan(text:   '.33', style: TextStyle(
                                                        fontSize: 18,
                                                      ))
                                                    ],
                                                  ),),


                                                  

                                                ],
                                              ),
                                              SizedBox(height: 5,),
                                              Container(
                                                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child:  RichText(text: TextSpan(
                                                  style: const TextStyle(color: Colors.black,  fontSize: 11),
                                                  children: [
                                                    const TextSpan(text:   'Interest Credited Today ', style: TextStyle(

                                                    )),
                                                    const TextSpan(text:   '+₦0.59', style: TextStyle(
                                                        color: AppColors.primary
                                                    ))
                                                  ],
                                                ),),

                                              )



                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.verified_user, color:AppColors.primary, size: 50,)

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
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 6,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.verified_user, size: 16, color:Colors.white),
                                        SizedBox(width: 7,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Security Check is not turn on', style:TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                                            Text('Make your account more secure with extra \nSafety checks ', style:TextStyle(color:Colors.white, fontSize: 12, ))
                                          ]
                                        )
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize: const Size(70, 30),
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                        ),
                                        onPressed: () {
                                          print('Button  clicked!');
                                        },
                                        child: Text('Turn Go', style: TextStyle(color: AppColors.primary),)
                                    )

                                  ],
                                )
                              ),
                            ),
                          ),

                        ]
                    ),

                    SizedBox(height: 60,),

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

                            FeatureItem(
                              title: 'Transaction History',
                              icon: Icons.receipt,
                              desc: '',
                            ),

                            FeatureItem(
                              title: 'Account Limits',
                              icon: Icons.lock_clock,
                              desc: 'View your transaction limits',
                            ),

                            FeatureItem(
                              title: 'Bank Card/Account ',
                              icon: Icons.card_giftcard,
                              desc: 'Add payment option',
                            ),

                            FeatureItem(
                              title: 'My BizPayment ',
                              icon: Icons.home,
                              desc: 'Receive payment for business ',
                            )






                          ],
                        ),
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

                            FeatureItem(
                              title: 'Security Center',
                              icon: Icons.verified_user,
                              desc: 'Protect your funds',
                            ),

                            FeatureItem(
                              title: 'Customer Service Center',
                              icon: Icons.support_agent,
                              desc: '',
                            ),

                            FeatureItem(
                              title: 'Invitation ',
                              icon: Icons.celebration,
                              desc: 'Invite friends and earn up to  ₦56,000 Bonus',
                            ),

                            FeatureItem(
                              title: 'OPay USSD ',
                              icon: Icons.add_ic_call,
                              desc: '',
                            ),

                            FeatureItem(
                              title: 'Tate Us ',
                              icon: Icons.star_rate,
                              desc: ' ',
                            )






                          ],
                        ),
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

                            FeatureItem(
                              title: 'Transfer To  Me Us ',
                              icon: Icons.shopping_bag,
                              desc: 'Receive Payment for business',
                            )






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
      bottomNavigationBar: const CustomBottomNav(currentIndex: 4),
    );
  }
}


class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? desc;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    this.desc,
  });

  @override
  Widget build(BuildContext context) {
    final hasDesc = desc != null && desc!.trim().isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Row(
        crossAxisAlignment:
        hasDesc ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment:
            hasDesc ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              hasDesc
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    desc!,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              )
                  : Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right, size: 30),
        ],
      ),
    );
  }
}
