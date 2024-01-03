import 'package:flutter/material.dart';

class MaverickAuthForm extends StatefulWidget {
  const MaverickAuthForm({super.key});

  @override
  State<MaverickAuthForm> createState() => MaverickAuthFormState();
}

class MaverickAuthFormState extends State<MaverickAuthForm> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool onlyOnSignUp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 380,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: !onlyOnSignUp,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 40,
                        color:
                            Theme.of(context).colorScheme.primary.withRed(180)),
                  ),
                ),
                Visibility(
                  visible: !onlyOnSignUp,
                  child: Text(
                    'Welcome back, you\'ve been missed',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor.withOpacity(0.8)),
                  ),
                ),
                Visibility(
                  visible: onlyOnSignUp,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 40,
                        color:
                            Theme.of(context).colorScheme.primary.withRed(180)),
                  ),
                ),
                Visibility(
                  visible: onlyOnSignUp,
                  child: Text(
                    'Create your free account',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor.withOpacity(0.8)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: onlyOnSignUp,
                  child: TextField(
                    controller: firstName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('First Name')),
                  ),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: onlyOnSignUp,
                  child: TextField(
                    controller: lastName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text('Last Name')),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text('Email')),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: onlyOnSignUp,
                  child: TextField(
                    controller: confirmPassword,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Confirm Password')),
                  ),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: onlyOnSignUp,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(380, 50),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: !onlyOnSignUp,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(380, 50),
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password?')),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    setState(() {
                      onlyOnSignUp = !onlyOnSignUp;
                    });
                  },
                  child: onlyOnSignUp
                      ? const Text('Already have an account? Sign In')
                      : const Text('Create an Acccount'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
