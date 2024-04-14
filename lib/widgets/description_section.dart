import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child:Column(
          children: [
            Text(
                "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, ",
             style: TextStyle(
               fontSize: 16,
               color: Colors.black.withOpacity(0.7),
             ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Course Length: ",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.timer,
                  color: Color(0xFF674AEF),
                ),
                SizedBox(width: 5),
                Text(
                  "26 Hours",
                  style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Text(
                  " Rating :",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(width: 5),
                Text(
                  " 4.5 ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ) ,
    );
  }

}