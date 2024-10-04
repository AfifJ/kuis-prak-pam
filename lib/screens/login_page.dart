import 'package:flutter/material.dart';
import 'package:kuis_barang_1/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isVisible = false;

  void _login(BuildContext context) async {
    if (_usernameController.text == 'admin' &&
        _passwordController.text == 'admin') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successful')),
      );
      await Future.delayed(const Duration(seconds: 1));
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(username: _usernameController.text)));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Username atau password salah"),
        backgroundColor: Color.fromARGB(255, 146, 27, 27),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 42,
            ),
            SizedBox(height: 150, child: Image.asset('upnLogo.png')),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  label: Text("Username"), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
                controller: _passwordController,
                obscureText: !isVisible,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                        !isVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: TextButton(

                        // style: ButtonStyle(backgroundColor: Colors.green),
                        onPressed: () {
                          _login(context);
                        },
                        style: ButtonStyle(
                            foregroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.green[800])),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 16),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
