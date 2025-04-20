import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Pengguna'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/profile.png',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Jhon Doe",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      Text("ali@gmail.com")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      Text("08123456789")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Icon(
                    Icons.telegram,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Icon(
                    Icons.facebook_outlined,
                    color: Colors.blue,
                    size: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
