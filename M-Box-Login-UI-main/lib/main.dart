import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "App Bar",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff2D3142),
                    fontFamily: 'Rubik Medium'),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/logo.png'),
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Maintenance",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Rubik Medium',
                                color: Color(0xff2D3142),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Box",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Rubik Medium',
                                color: Color(0xffF7903B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: 'Rubik Medium',
                        fontSize: 24,
                        color: Color(0xff2D3142),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(
                    child: Text(
                      "lorem ipsum dollar sit amet.\n consectetur adipscing elit.",
                      style: TextStyle(
                        fontFamily: 'Rubik Regular',
                        fontSize: 16,
                        color: Color(0xff4C5988),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.email, color: Color(0xff233F4B),),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: TextFormField(
                      decoration: InputDecoration(
              
                        hintText: 'password',
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock, color: Color(0xff233F4B),),
              
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                          icon:const Icon(Icons.visibility_off),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?', style: TextStyle(decoration: TextDecoration.underline),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 150,),
                  Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      color: const Color(0xffF9703B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Regular',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Rubik Regular',
                          fontSize: 16,
                          color: Color(0xff4C5988),
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 16,
                          color: Color(0xffF9703B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
