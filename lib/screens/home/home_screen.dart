import 'package:delivery_app_2/screens/login/login.dart';
import 'package:delivery_app_2/custom/my_drawer_header.dart';
import 'package:delivery_app_2/screens/order/order_screen.dart';
import 'package:delivery_app_2/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

import 'main_deliver_screen.dart';

import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deliver App Food'),
        backgroundColor: const Color.fromARGB(255, 243, 114, 63),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            MyDrawerHeader(
              avatarImageUrl: 'assets/image/avatar-gau-cute-11.jpg',
              name: 'Huỳnh Pước Đạt',
              email: 'huynhphuocdat2@gmail.com',
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Dashboard'),
              onTap: () {},
            ),
            ListTile(
                leading: Icon(Icons.update_outlined),
                title: Text('Cập nhật thông tin'),
                onTap: () {}),
            ListTile(
              leading: Icon(Icons.edit_outlined),
              title: Text('Đổi mật khẩu'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text('Quản lý đơn hàng'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderManagementScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text('Privacy policy'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: MainDeliveryScreen(),
    );
  }
}
