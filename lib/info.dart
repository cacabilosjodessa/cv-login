import 'package:flutter/material.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Data'),
        backgroundColor: Color.fromARGB(255, 48, 33, 75),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Center(
              child: Text(
                "PERSONAL DETAILS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "  AGE:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "  21 Years Old ",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "  Date of Birth:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            " January 24, 2002 ",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "  Address:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            " #154 Buenlag, Calasiao, Pangasinan",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "  Height:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "   5;0",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "  Weight:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "   40kg",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "  Status:",
            style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text(
            "   Single",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 33, 75),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
