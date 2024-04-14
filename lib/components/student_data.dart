import 'package:flutter/material.dart';
import 'package:login_page/components/constants.dart';

class StudentName extends StatelessWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);
  final String studentName ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Hi ',
          style:
          Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          studentName,
          style:
          Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );

  }
}
class StudentClass extends StatelessWidget{
    const StudentClass({Key? key, required this.studentclass}):super(key: key);
   final String studentclass ;



  @override
  Widget build(BuildContext context) {
    return Text(
      studentclass,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontSize: 14.0),
    );
  }}

class StudentYear extends StatelessWidget {
  const StudentYear({Key? key, required this.studentYear }):super (key: key);
  final String studentYear ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor ,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: TextStyle(
              fontSize: 12.0,
              color: Color(0xFF313131),
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }}

class StudentPicture extends StatelessWidget{
  const StudentPicture({Key? key, required this.picAddress, required this.onPress}):super (key: key);
  final String picAddress ;
  final VoidCallback onPress ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: Color(0xFF6789CA),
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}
class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {Key? key,
        required this.title,
        required this.value,
        required this.onPress})
      : super(key: key);
  final String title;
  final String value;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 42,
        height: 12,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: kTextBlackColor,
              ),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextLightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}