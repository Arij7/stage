import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/components/constants.dart';
import 'package:login_page/pages/fee_screen.dart';
import '../components/drawer.dart';
import '../components/student_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // we will devide the screen into two parts
          // fixed height for first half

          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StudentName(
                      studentName: 'Aisha',
                    ),
                    kHalfSizeBox,
                    StudentClass(studentclass: 'Class X-II A | Roll no: 12'),
                    kHalfSizeBox,
                    StudentYear(studentYear: '2024-2025'),
                  ],
                ),
                kHalfSizeBox,
                StudentPicture(picAddress: 'assets/student_profile.jpeg', onPress: (){}),
                kHalfSizeBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        // go to attendance screen here
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6F7),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Attendance',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '98.02%',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, FeeScreen.routeName);

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6F7),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Fees Due',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '600\$',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6F7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0 * 3),
                    topRight: Radius.circular(20.0 * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/quiz.svg',
                            title: 'Take Quiz'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/assignment.svg',
                            title: 'Assignments'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/holiday.svg',
                            title: 'Holidays'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/timetable.svg',
                            title: 'Time\nTable'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/result.svg',
                            title: 'Result'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/datesheet.svg',
                            title: 'Datesheet'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/ask.svg',
                            title: 'Ask'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/gallery.svg',
                            title: 'Gallery'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/resume.svg',
                            title: 'Leave\nApplication'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/lock.svg',
                            title: 'Change\nPassword'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/event.svg',
                            title: 'Events'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/logout.svg',
                            title: 'Logout'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.onPress,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
