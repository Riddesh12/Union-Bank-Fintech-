import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            _buildStatusCard(),
            SizedBox(height: 10.0),
            _buildStatusCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ticket ID: #UBI-20250120-00567',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Text('Customer: Ravi Kumar'),
          Text('Query: Housing Loan Inquiry'),
          Text('Assigned Officer: Ananya Mehta'),
          Text('Status: Video call scheduled for 2025-01-22 at 11 AM.'),
        ],
      ),
    );
  }
}
