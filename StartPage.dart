import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLOOD Donation'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Donate Your Blood, Save A Life And Be Part Of Someone\'s Happiness.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.bloodtype, size: 40, color: Colors.red),
                    Text('Donate'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.search, size: 40, color: Colors.red),
                    Text('Find Donors'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.local_hospital, size: 40, color: Colors.red),
                    Text('Order Blood'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Donation Need',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(child: Text('B-')),
                    title: Text('Namal Udugama'),
                    subtitle: Text('2 units · 5 km away'),
                    trailing: Text('5 hours ago'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('O+')),
                    title: Text('Himali Bandar'),
                    subtitle: Text('1 unit · 8 km away'),
                    trailing: Text('2 hours ago'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('A-')),
                    title: Text('Asekha Dhanani'),
                    subtitle: Text('1 unit · 10 km away'),
                    trailing: Text('1 hour ago'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.red,
      ),
    );
  }
} 