import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Placeholder data
  double _dataUsedToday = 1.2; // in GB
  double _emergencyBankData = 5.8; // in GB

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wi-Fi Data Bank'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Usage Summary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            _buildUsageCard(
              title: 'Used Today',
              data: '${_dataUsedToday.toStringAsFixed(1)} GB',
              icon: Icons.wifi,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            _buildUsageCard(
              title: 'Emergency Bank',
              data: '${_emergencyBankData.toStringAsFixed(1)} GB',
              icon: Icons.savings,
              color: Colors.green,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Save More Data',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildUsageCard({
    required String title,
    required String data,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      color: const Color(0xFF2C2C2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  data,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
