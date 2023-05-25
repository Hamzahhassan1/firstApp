import 'package:flutter/material.dart';
import 'package:job/root.dart';

void main() {
  runApp(const MaterialApp(
      //   home: first(),
      ));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_rounded),
            const Text('Login'),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Root()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset("images/h.png"),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Text(
                  "sign in ",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "USERNAME",
                      prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  )),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "PASSWORD",
                    prefixIcon: Icon(Icons.key, color: Colors.blue),
                    suffixIcon: Icon(Icons.visibility, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Forgot your password ?!"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.mail),
                      Text(
                        "Continue With Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.alternate_email_outlined),
                        Text(
                          "Sign in With Google  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Donot have an account?"),
              TextButton(onPressed: () {}, child: Text("sign up here"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 40,
              ),
              Icon(
                Icons.mail_lock,
                size: 40,
              ),
              Icon(
                Icons.add_call,
                color: Colors.green,
                size: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
