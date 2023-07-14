import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff21c590),
        automaticallyImplyLeading: false,
        title: Text(
          "Owners",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                " User",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Register",
                    style: TextStyle(fontSize: 16,color: Colors.green),
                  ),
                ),

                // ListTile(
                //   trailing: ElevatedButton(
                //     onPressed: (){},
                //     child: Text(
                //       "Register"
                //     ),
                //   )
                // ),

                ListTile(
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  title: Text(
                    "Tools Shoppie",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.phone_android_outlined,
                  ),
                  trailing: IconButton(
                  tooltip: 'Call',
            onPressed: (){

            },
            icon: Icon(
            Icons.add_call,
            ),
            ),
                  title: Text(
                    "9012325048",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.home_outlined,
                  ),
                  title: Text(
                    "Address house",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                  ),
                  title: Text(
                    "Alappuzha",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.pin_drop_outlined,
                  ),
                  title: Text(
                    "688 589",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
