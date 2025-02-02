import 'package:flutter/material.dart';
import 'package:tech_quest/constants/mycolor.dart';
import 'package:tech_quest/widget/bulid_text_fromfield.dart';

import '../widget/social_button.dart';

class RegestrScreeen extends StatefulWidget {
  const RegestrScreeen({super.key});
  static String id = 'RegestrScreeen';

  @override
  // ignore: library_private_types_in_public_api
  _RegestrScreeenState createState() => _RegestrScreeenState();
}

class _RegestrScreeenState extends State<RegestrScreeen> {
  bool agreeToTerms = false;

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhithe,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              const SizedBox(height: 10,),
               const Text(
                  'Register Now',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Begin learning with just a few clicks',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                
                const BuildTextFromfield(label: 'Name',hint: 'Full Name',),
                const SizedBox(height: 16),
                const BuildTextFromfield(label: 'Email',hint:  'Email Address'),
                const SizedBox(height: 16),
                const BuildTextFromfield(label: 'Password',hint:  'New Password', isPassword: true),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        activeColor: myBlue,
                        value: agreeToTerms,
                        onChanged: (value) {
                          setState(() {
                            agreeToTerms = value!;
                          });
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text('I agree to the terms & conditions', style: TextStyle(fontSize: 14)),
                  ],
                ),
               const SizedBox(height: 24),
                ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text('Register', style: TextStyle(fontSize: 16)),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: myWhithe,
                    backgroundColor: myBlue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
               const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[300])),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('Or', style: TextStyle(color: myBlack, fontSize: 14)),
                    ),
                    const Expanded(child: Divider(color: myGray)),
                  ],
                ),
               const SizedBox(height: 24),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton('assets/images/apple.jpg'),
                     const SizedBox(width: 20),
                     socialButton('assets/images/google.jpg'),
                     const SizedBox(width: 20),
                    socialButton('assets/images/facebook.jpg',),
                  ],
                ),
               const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already Have An Account?', style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                    TextButton(
                      child:const Text('Login', style: TextStyle(color: myBlue, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}