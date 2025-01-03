import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.green,
          tabs: [
            Tab(text: 'Riwayat'),
            Tab(text: 'Dalam proses'),
            Tab(text: 'Terjadwal'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOrderList(),
          Center(child: Text('Dalam Proses')),
          Center(child: Text('Terjadwal')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: 'Promos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
        ],
        onTap: (index) {
          // Handle bottom navigation
        },
      ),
    );
  }

  Widget _buildOrderList() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        // Transaction Card
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.blue),
            title: Text('Transaksi Gopay'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        SizedBox(height: 16),
        // Order Item
        _buildOrderItem(
            'Ayam Benjoss, kedungkandang',
            '3 item\n2 Paket Ayam Bakar Jumbo',
            'Makanan sudah diantar\n28 Des 11.36',
            'Rp. 58.800'),
        _buildOrderItem(
            'Ayam Benjoss, kedungkandang',
            '3 item\n2 Paket Ayam Bakar Jumbo',
            'Makanan sudah diantar\n28 Des 11.36',
            'Rp. 58.800'),
        _buildOrderItem(
            'Ayam Benjoss, kedungkandang',
            '3 item\n2 Paket Ayam Bakar Jumbo',
            'Makanan sudah diantar\n28 Des 11.36',
            'Rp. 58.800'),
      ],
    );
  }

  Widget _buildOrderItem(
      String title, String subtitle, String status, String price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.redAccent,
          child: Icon(Icons.restaurant_menu, color: Colors.white),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(subtitle),
            SizedBox(height: 4),
            Text(status, style: TextStyle(color: Colors.grey)),
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Pesan lagi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
