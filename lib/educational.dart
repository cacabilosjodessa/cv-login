import 'package:flutter/material.dart';

class Educational extends StatelessWidget {
  const Educational({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 248, 252),
      appBar: AppBar(
        title: const Text("Educational"),
        backgroundColor: Color.fromARGB(255, 48, 33, 75),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  'ELEMENTARY',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 15, 15),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Text(
              "School Name: Pogo Elementary School",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Text(
              "Year Graduated: 2011 - 2012",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Divider(
              height: 30,
              color: Color.fromARGB(153, 17, 16, 16),
            ),
            Center(
              child: Text(
                "SECONDARY",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 15, 15),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "School Name: Bautista National School",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Text(
              "Year Graduated: 2017 - 2018",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Divider(
              height: 30,
              color: Color.fromARGB(153, 17, 16, 16),
            ),
            Center(
              child: Text(
                "COLLEGE",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 15, 15),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "School Name: Philippine College of Scinece and Technology",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Text(
              "Course: Bachelor of Science in Information Technology",
              style: TextStyle(
                color: Color.fromARGB(255, 15, 15, 15),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
