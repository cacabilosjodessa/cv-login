import 'package:flutter/material.dart';
import 'info.dart';
import 'educational.dart';
import 'skill.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 59, 63),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 48, 33, 75),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/dhems.jpg',
                ),
                radius: 60.0,
              ),
            ),
            const Divider(height: 90, color: Color.fromRGBO(116, 113, 116, 1)),
            const Text(
              "Name:",
              style: TextStyle(
                color: Color.fromRGBO(247, 249, 250, 1),
              ),
            ),
            const Text(
              "Dhempole Medina",
              style: TextStyle(
                  color: Color.fromRGBO(15, 18, 20, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Text(
              "Position:",
              style: TextStyle(
                color: Color.fromRGBO(247, 249, 250, 1),
              ),
            ),
            const Text(
              "Cyber Security",
              style: TextStyle(
                  color: Color.fromRGBO(12, 13, 14, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.mail, color: Color.fromARGB(255, 255, 255, 255)),
                SizedBox(width: 8.0),
                Text(
                  "dhempolemedina@gmail.com",
                  style: TextStyle(color: Color.fromRGBO(12, 13, 14, 1)),
                )
              ],
            ),
            const Row(
              children: [
                Icon(Icons.call, color: Color.fromARGB(255, 255, 255, 255)),
                SizedBox(width: 8.0),
                Text(
                  "09071769536",
                  style: TextStyle(color: Color.fromRGBO(12, 13, 14, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => info(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Educational(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => skills(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
