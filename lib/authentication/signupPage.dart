import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController nameController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffeef4f4),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      // bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      // bottomLeft: Radius.circular(40.0)
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffc0bb5d),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        // bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        // bottomLeft: Radius.circular(40.0)
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextFormField(
                            // controller: _usernameController,
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
                            // controller: _usernameController,
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
                            // controller: _usernameController,
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
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextFormField(
                            // controller: _passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: 'Password',
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  icon: Icon(
                                _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                                  ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            obscureText: _obscureText,
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          child: Text('SignUp'),
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
    );
  }
}
