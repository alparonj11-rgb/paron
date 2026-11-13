import 'package:flutter/material.dart';
import 'theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(icon: const Icon(Icons.settings_outlined), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // معلومات المستخدم
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.navy,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text('Healthcare with Style', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                TextButton(
                  onPressed: () {},
                  child: const Text('Edit Profile', style: TextStyle(color: AppColors.primary, fontSize: 12)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // خيارات القائمة
          _buildProfileTile(Icons.receipt_long_outlined, 'My Orders'),
          _buildProfileTile(Icons.location_on_outlined, 'Addresses'),
          _buildProfileTile(Icons.payment_outlined, 'Payment Methods'),
          _buildProfileTile(Icons.favorite_border, 'Wishlist'),
          _buildProfileTile(Icons.help_outline, 'Help & Support'),
          _buildProfileTile(Icons.info_outline, 'About Scrub Studio'),
        ],
      ),
    );
  }

  Widget _buildProfileTile(IconData icon, String title) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon, color: AppColors.textDark),
        title: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textMuted),
        onTap: () {},
      ),
    );
  }
}