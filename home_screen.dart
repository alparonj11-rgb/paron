import 'package:flutter/material.dart';
import 'theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Image.asset('assets/images/logo_text.png', height: 30),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_bag_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(fontSize: 18, color: AppColors.textDark, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: 'Designed for\n'),
                              TextSpan(text: 'Care.\n', style: TextStyle(color: AppColors.primary)),
                              TextSpan(text: 'Made for You.'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Premium medical scrubs and lab coats crafted for comfort, style and confidence.',
                          style: TextStyle(fontSize: 11, color: AppColors.textMuted),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {},
                          child: const Text('SHOP NOW', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/doctors_banner.png', height: 140),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Categories Section Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Shop by Category', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: const Text('See All', style: TextStyle(color: AppColors.primary))),
              ],
            ),
            const SizedBox(height: 10),
            // Category Cards
            Row(
              children: [
                Expanded(child: _buildCategoryCard('Medical Scrubs', 'assets/images/scrub_top.png')),
                const SizedBox(width: 12),
                Expanded(child: _buildCategoryCard('Lab Coats', 'assets/images/lab_coat.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 90),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
        ],
      ),
    );
  }
}