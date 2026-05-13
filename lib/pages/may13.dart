import 'package:flutter/material.dart';

class May13 extends StatefulWidget {
  const May13({super.key});

  @override
  State<May13> createState() => _May13State();
}

class _May13State extends State<May13> {
  bool toogle = true;
  var ico = const Icon(Icons.pending, color: Colors.white);
  
  // FIX: Properly declared as a List of Maps containing all 10 people
  final List<Map<String, String>> arrData = [
    {
      'name': "Rahul Kumar",
      'des': "Need Blood O+",
      'state': 'Patna',
      'phone': '+91 98765 43210',
      'contact_via': 'Call or WhatsApp',
      'address': 'ICU Bed 14, PMCH Hospital, Ashok Rajpath, Patna',
      'more': 'Urgent requirement for accident trauma patient. Weight > 55kg needed.',
    },
    {
      'name': "Rani Kumari",
      'des': "Need Blood AB+",
      'state': 'Ranchi',
      'phone': '+91 87654 32109',
      'contact_via': 'Call Only',
      'address': 'Blood Bank Counter, RIMS Hospital, Bariatu, Ranchi',
      'more': 'Planned surgery on Friday. Donor must have no medication in past 48 hrs.',
    },
    {
      'name': "Sunny Singh",
      'des': "Need Blood O-",
      'state': 'Lucknow',
      'phone': '+91 76543 21098',
      'contact_via': 'WhatsApp Preferred',
      'address': 'Emergency Ward, KGMU Hospital, Chowk, Lucknow',
      'more': 'Rare group requirement. Please reach out if you have a valid donor ID card.',
    },
    {
      'name': "Nusrat Jahan",
      'des': "Need Blood B+",
      'state': 'Dhanbad',
      'phone': '+91 65432 10987',
      'contact_via': 'Call or WhatsApp',
      'address': 'Room 204, SNMMCH (Patliputra Medical College), Dhanbad',
      'more': 'Thalassemia patient care. Last donation must be at least 3 months ago.',
    },
    {
      'name': "Vishal Sharma",
      'des': "Need Blood AB+",
      'state': 'Delhi',
      'phone': '+91 91234 56789',
      'contact_via': 'Call Only (Urgent)',
      'address': 'Trauma Center, AIIMS Hospital, Ansari Nagar, New Delhi',
      'more': 'Emergency plasma replacement therapy needed immediately.',
    },
    {
      'name': "Ananya Roy",
      'des': "Need Blood A-",
      'state': 'Kolkata',
      'phone': '+91 93456 78901',
      'contact_via': 'WhatsApp Only',
      'address': 'Female Ward 3, SSKM Hospital, AJC Bose Road, Kolkata',
      'more': 'Required for a dengue patient with rapidly dropping blood platelets.',
    },
    {
      'name': "Deepak Patel",
      'des': "Need Blood B-",
      'state': 'Ahmedabad',
      'phone': '+91 94567 89012',
      'contact_via': 'Call or WhatsApp',
      'address': 'Civil Hospital, Asarwa, Near Asarwa Railway Station, Ahmedabad',
      'more': 'Urgent open-heart surgery scheduled tomorrow morning. Needs 2 units.',
    },
    {
      'name': "Priya Nair",
      'des': "Need Blood O+",
      'state': 'Mumbai',
      'phone': '+91 95678 90123',
      'contact_via': 'Call Only',
      'address': 'Maternity Ward, KEM Hospital, Acharya Donde Marg, Parel, Mumbai',
      'more': 'Emergency C-section delivery case. Free travel arrangement available for donor.',
    },
    {
      'name': "Manpreet Singh",
      'des': "Need Blood A+",
      'state': 'Chandigarh',
      'phone': '+91 96789 01234',
      'contact_via': 'Call or WhatsApp',
      'address': 'Emergency Block, PGIMER, Sector 12, Chandigarh',
      'more': 'Donor should be a non-smoker and must not have consumed alcohol in last 24 hours.',
    },
    {
      'name': "Karthik Raja",
      'des': "Need Blood O-",
      'state': 'Chennai',
      'phone': '+91 97890 12345',
      'contact_via': 'WhatsApp Preferred',
      'address': 'Blood Bank, Rajiv Gandhi Government General Hospital, Chennai',
      'more': 'Urgent cancer therapy requirement. Donor needs to bring a valid government ID.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Blood Need List", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: arrData.map((value) {
          return Card(
            elevation: 2,
            color: Colors.pink,
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: InkWell(
                onTap: () {
                  // FIX: Cleared broken cast line and wired arguments package to the avatar tap
                  Navigator.pushNamed(context, 'hello', arguments: value);
                },
                child: const Hero(
                  tag: 'next',
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                ),
              ),
              title: Text(
                value['name'].toString().toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                value['des'].toString(),
                style: const TextStyle(color: Colors.white70),
              ),
              trailing: InkWell(
                onTap: () {
                  // FIX: Standardized routing to hit your receiver page 'hello' with data payload
                  Navigator.pushNamed(context, 'hello', arguments: value);
                },
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}