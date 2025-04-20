import 'package:flutter/material.dart';

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Langganan"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const TabletLayout();
          } else {
            return const MobileLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileSection(),
        Expanded(child: SubscriptionGrid(crossAxisCount: 2)),
        const AddSubscriptionButton(),
      ],
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(child: ProfileSection()),
            Expanded(
              child: Text(
                "Nama Pengguna",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: SubscriptionGrid(
            crossAxisCount: 3,
          ),
        ),
        const AddSubscriptionButton(),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
          'https://example.com/profile.jpg'), // Replace with your image URL
    );
  }
}

class SubscriptionGrid extends StatelessWidget {
  final int crossAxisCount;
  SubscriptionGrid({super.key, required this.crossAxisCount});

  final List<String> subscriptions = [
    'Netflix',
    'Spotify',
    'HBO Max',
    'Disney+',
    'Amazon Prime',
    'YouTube Premium'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 3,
      ),
      itemCount: subscriptions.length,
      itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: Text(
              subscriptions[index],
              style: const TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}

class AddSubscriptionButton extends StatelessWidget {
  const AddSubscriptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Tambah Langganan"),
      ),
    );
  }
}
