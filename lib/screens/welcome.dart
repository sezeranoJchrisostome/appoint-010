import "package:flutter/material.dart";
import "package:school_d_project/screens/login_screen.dart";

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  // NavigationBar.push(context.navigationBar)
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      color: Color.fromARGB(248, 6, 175, 227), fontSize: 20),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("images/doctors.png"),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Doctors Appointment",
            style: TextStyle(
                color: Color.fromARGB(248, 6, 175, 227),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Appoint your doctor",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 2),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Color.fromARGB(248, 6, 175, 227),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                color: Color.fromARGB(248, 6, 175, 227),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
