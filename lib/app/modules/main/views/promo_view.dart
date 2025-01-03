import 'package:flutter/material.dart';

class PromoView extends StatefulWidget {
  @override
  _PromoViewState createState() => _PromoViewState();
}

class _PromoViewState extends State<PromoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // XP Progress Section
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.star, color: Colors.white),
              ),
              title: Text('121 XP to your next treasure'),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: LinearProgressIndicator(
                value: 0.6,
                backgroundColor: Colors.grey[300],
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Statistics Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatCard('13', 'Vouchers'),
              _buildStatCard('0', 'Langganan'),
              _buildStatCard('0', 'Mission'),
            ],
          ),
          SizedBox(height: 20),
          // Promo Code Input
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: Icon(Icons.qr_code, color: Colors.orange),
              title: Text('Masukkan kode promo'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(height: 20),
          // Promo Section Header
          Text(
            'Promo menarik buat kamu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // Promo Filters
          Wrap(
            spacing: 8,
            children: [
              _buildFilterChip('Apa aja'),
              _buildFilterChip('GoFood'),
              _buildFilterChip('GoPay'),
              _buildFilterChip('GoPayLater'),
              _buildFilterChip('GoRide'),
            ],
          ),
          SizedBox(height: 20),
          // Promo Cards Section
          _buildPromoCard('assets/images/promo1.png'),
          _buildPromoCard('assets/images/promo2.png'),
          _buildPromoCard('assets/images/promo3.png'),
        ],
      ),
    );
  }

  Widget _buildStatCard(String value, String label) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(label),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.green[100],
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }

  Widget _buildPromoCard(String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 150,
        ),
      ),
    );
  }
}
