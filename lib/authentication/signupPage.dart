import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key ? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                                        'Sign Up',
                                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 16, top: 30),
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
                                        padding: const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Phone',
                                            labelText: 'Phone',
                                            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Address',
                                            labelText: 'Address',
                                            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8),
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

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        TextButton(
                                          child: Text(
                                            "Forgot password?",
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                           onPressed: () {  },

                                        )
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Action for sign up button
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
                                            'Sign Up',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Already have an account?",
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                          TextButton(
                                            child: Text(
                                              "Login",
                                              style: TextStyle(
                                                  fontSize: 16
                                              ),
                                            ),
                                            onPressed: () {  },

                                          )
                                        ],
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

// class InputField extends StatefulWidget {
//   InputField({
//     Key? key,
//     required this.controller,
//     required this.hint,
//     required this.label,
//     this.suffixIcon,
//     bool obscure = false,
//     this.prefixIcon,
//   }) : super(key: key);
//
//   final TextEditingController controller;
//   final String hint;
//   final String label;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//
//   @override
//   State<InputField> createState() => _InputFieldState();
// }
//
// class _InputFieldState extends State<InputField> {
//   bool obscure = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: TextFormField(
//         controller: widget.controller,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           hintText: widget.hint,
//           labelText: widget.label,
//           suffixIcon: IconButton(
//             onPressed: () {
//               setState(() {
//                 obscure = !obscure;
//               });
//             },
//             icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
//         ),
//         textInputAction: TextInputAction.next,
//         obscureText: obscure,
//       ),
//     );
//   }
// }



class Star extends StatelessWidget {
  const Star({
    super.key,
  });

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
