import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Safe argument retrieval to prevent Null Type / Mapping crashes
    final dynamic arguments = ModalRoute.of(context)?.settings.arguments;

    if (arguments == null || arguments is! Map) {
      return const Scaffold(
        body: Center(
          child: Text(
            "Error: No data received!",
            style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    final Map<dynamic, dynamic> receivedDetails = arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Donor Details", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Hero(
          tag: 'next',
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320, // Widened container to fit long addresses
                  padding: const EdgeInsets.all(20.0), // Padding instead of hard height stops text clipping
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Left-aligns details cleanly
                    mainAxisSize: MainAxisSize.min, // Container shrinks wrap around text fields
                    children: [
                      const Center(
                        child: Text(
                          "BLOOD REQUEST",
                          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                        ),
                      ),
                      const Divider(color: Colors.white54, height: 25, thickness: 1),
                      
                      // Corrected details with matching labels
                      _buildInfoRow("Name", receivedDetails['name']),
                      _buildInfoRow("Blood Type", receivedDetails['des']),
                      _buildInfoRow("Phone", receivedDetails['phone']),
                      _buildInfoRow("State", receivedDetails['state']),
                      _buildInfoRow("Address", receivedDetails['address']),
                      
                      const Divider(color: Colors.white54, height: 25, thickness: 1),
                      const Text(
                        "Additional Notes:",
                        style: TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        receivedDetails['more']?.toString() ?? 'No extra details.',
                        style: const TextStyle(fontSize: 14, color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Small helper layout widget to keep your profile lines neat
  Widget _buildInfoRow(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 16, color: Colors.white),
          children: [
            TextSpan(text: "$label: ", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)),
            TextSpan(text: value?.toString() ?? 'N/A'),
          ],
        ),
      ),
    );
  }
}