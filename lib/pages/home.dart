import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Text(
                          'Profile Picture',
                          style: profile,
                        ),
                      ),
                      Image.asset(
                        'assets/primary.png',
                        width: 140,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Anne Margaritha',
                        style: name,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'UX Designer',
                        style: job,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  child: Wrap(
                    spacing: 38,
                    runSpacing: 40,
                    children: [
                      Image.asset(
                        'assets/item1.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/item2.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/item3.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/item4.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/item5.png',
                        width: 80,
                      ),
                      Image.asset(
                        'assets/item6.png',
                        width: 80,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 224,
                  height: 55,
                  margin: const EdgeInsets.only(bottom: 76),
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 300,
                            padding: const EdgeInsets.symmetric(
                              vertical: 50,
                              horizontal: 61,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Update Photo',
                                  style: profile.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'You are only able to change \nthe picture profile once',
                                  style: job.copyWith(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: 224,
                                  height: 55,
                                  margin: const EdgeInsets.only(top: 30),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.all(
                                  //     Radius.circular(16),
                                  //   ),
                                  // ),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: orangeColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Update Profile',
                      style: name.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
