import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/authentication/custmersPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  bool _obscureText = true;
  bool _showAdditionalFields = false;

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
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Column(
                            children: [
                              Star(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Register',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 16, top: 30),
                                    child: TextFormField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        hintText: 'Shop Name',
                                        labelText: 'Shop Name',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                      ),
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 16,),
                                    child: TextFormField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        hintText: "Owner's Name",
                                        labelText: "Owner's Name",
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                      ),
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        hintText: 'Phone',
                                        labelText: 'Phone',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                      ),
                                      keyboardType: TextInputType.phone,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                  ExpansionTile(
                                    maintainState: true,
                                    title: Text(
                                      'More Details',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Icon(
                                      _showAdditionalFields
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                    ),
                                    onExpansionChanged: (value) {
                                      setState(() {
                                        _showAdditionalFields = value;
                                      });
                                    },
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          maxLines: 4,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Address',
                                            labelText: 'Address',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16.0),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'City',
                                            labelText: 'City',
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'District',
                                            labelText: 'District',
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'PIN',
                                            labelText: 'PIN',
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Customers()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Color(0xFF21C69F),
                                        minimumSize: Size(double.infinity, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Register',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have an account?",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      TextButton(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
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
