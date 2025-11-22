import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dashbord/constant/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    // refresh UI when focus changes
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // FIXED: prevents memory leak
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.only(top: 14, left: 5, right: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                children: [
                  const Icon(Icons.chevron_left),
                  const SizedBox(width: 5),
                  Text(
                    'Help',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
          ),
          padding: const EdgeInsets.all(8.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Logo
              Center(
                child: Image.asset(
                  'assets/images/opay_logo.png',
                  scale: 1.3,
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                'Log in to your account',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 20),

              // ===== INPUT FIELD WITH FOCUS EFFECT =====
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),

                decoration: BoxDecoration(
                  color: _focusNode.hasFocus
                      ? Colors.white
                      : Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),

                  // Shadow changes on focus

                ),

                child: TextField(
                  focusNode: _focusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],

                  decoration: InputDecoration(
                    labelText: 'Enter your  Mobile No./Email ',

                    labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),

                    floatingLabelStyle: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: "Lost Your Mobile Number, ",
                      style: TextStyle(fontWeight: FontWeight.w400, color: AppColors.grey),
                    ),
                    TextSpan(
                      text: "Change Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary, // optional
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,

                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    ),
                    onPressed: () {
                      print('Button  clicked!');
                    },
                    child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800), )
                ),
              ),
              SizedBox(height: 8,),
              Center(child: Text('Dont have an  Opay yet?')),
              Center(child: Text('Click here to get one', style: TextStyle(color: AppColors.primary),)),
              SizedBox(height: 20
                ,),


            ],
          ),
        ),
      ),
    );
  }
}
