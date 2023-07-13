import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffeef4f4),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Star(),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Login',
                                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 16, top: 60),
                                        child: TextFormField(
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Name',
                                            labelText: 'Name',
                                            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                                          ),
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Password',
                                            labelText: 'Password',
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                                            ),
                                            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                                          ),
                                          obscureText: _obscureText,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: TextButton(
                                          onPressed: () {
                                            // Action for "Forgot Password" button
                                          },
                                          child: Text(
                                            'Forgot Password?',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Action for "Login" button
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF21C69F),
                                          onPrimary: Colors.white,
                                          minimumSize: Size(double.infinity, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        children :[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            MaterialButton(
                                              onPressed: () {
                                                // Action for Facebook sign-in button
                                              },
                                              color: Color(0xffeff1f1),
                                              textColor: Colors.blue,
                                              padding: EdgeInsets.all(12),
                                              shape: CircleBorder(),
                                              child: Icon(Icons.facebook),
                                            ),MaterialButton(
                                              onPressed: () {
                                                // Action for Facebook sign-in button
                                              },
                                              color: Color(0xffeff1f1),
                                              textColor: Colors.black,
                                              padding: EdgeInsets.all(12),
                                              shape: CircleBorder(),
                                              child: Icon(Icons.apple),
                                            ),
                                            MaterialButton(
                                              onPressed: () {
                                                // Action for Facebook sign-in button
                                              },
                                              color: Color(0xffeff1f1),
                                              textColor: Colors.red,
                                              padding: EdgeInsets.all(12),
                                              shape: CircleBorder(),
                                              child: Icon(Icons.g_mobiledata),
                                            ),
                                          ],
                                        ),
                                          SizedBox(height: 2),
                                          TextButton(
                                            onPressed: () {
                                              // Action for "Don't have an account? Sign up" button
                                            },
                                            child: Text(
                                              "Don't have an account? Sign up",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),

                                        ]
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Star extends StatelessWidget {
  const Star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 134,
        height: 135,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 134,
                height: 135,
                decoration: ShapeDecoration(
                  color: Color(0xFF21C69F),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              left: 4,
              top: 5,
              child: Container(
                width: 130,
                height: 130,
                decoration: ShapeDecoration(
                  color: Color(0xFFEDF3F3),
                  shape: StarBorder(
                    points: 5,
                    innerRadiusRatio: 0.38,
                    pointRounding: 0,
                    valleyRounding: 0,
                    rotation: 0,
                    squash: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
