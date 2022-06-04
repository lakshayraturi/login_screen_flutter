import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page🔒'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        children: [
          Column(
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // const Text(
              //   'Login Page',
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 40,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const SizedBox(
                height: 60,
              ),
              const TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  hintText: 'Enter Valid Email Id',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: _isObscure,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  hintText: 'Enter 8-digit Secure Password',
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  filled: true,
                  suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      _isObscure = !_isObscure;
                    }),
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Submit Here',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
