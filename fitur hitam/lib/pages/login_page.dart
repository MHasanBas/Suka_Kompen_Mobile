import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart'; // Assuming HomePage is already defined.

class LoginPage extends StatelessWidget {
  final TextEditingController nimController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background to match the design
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title text at the top
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 30, 130),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 40),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Suka Kompen.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Text field for NIM with placeholder inside the box
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.blue[900]!, // Blue border
                    width: 2.0,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: nimController,
                  decoration: const InputDecoration(
                    hintText: "NIM/NIP", // NIM placeholder
                    border: InputBorder.none, // No extra border
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 20),

              // Text field for Password with placeholder inside the box
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.blue[900]!, // Blue border
                    width: 2.0,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password", // Password placeholder
                    border: InputBorder.none, // No extra border
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 40),

              // Login button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(), // Navigate to HomePage
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900], // Dark blue background
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
