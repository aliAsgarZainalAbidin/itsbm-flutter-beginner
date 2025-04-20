import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String jobTitle = "Mobile Developer";
  TextEditingController emailController = TextEditingController();

  void changeJobTitle() {
    setState(() {
      jobTitle = jobTitle == "Mobile Developer"
          ? "Flutter Engineer"
          : "Mobile Developer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kartu Nama Digital"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/200',
                ),
                foregroundImage: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
                child: Text(
                  "AZ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ali Asgar Zainal Abidin",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                jobTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: changeJobTitle,
                child: const Text("Ubah Pekerjaan"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: "Masukkan email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Email: ${emailController.text}",
                      ),
                    ),
                  );
                },
                child: const Text("Simpan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
