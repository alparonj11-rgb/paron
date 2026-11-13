import 'package:flutter/material.dart';
import 'theme.dart';

class CustomizeScreen extends StatefulWidget {
  const CustomizeScreen({super.key});

  @override
  State<CustomizeScreen> createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  int selectedTab = 0; // 0: Color, 1: Embroidery, 2: Style, 3: Size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customize Your Scrub'),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_bag_outlined), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // المعاينة المباشرة
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Image.asset('assets/images/custom_scrub.png', fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),
            // تبويبات التخصيص
            Row(
              children: [
                _buildTab('Color', 0),
                _buildTab('Embroidery', 1),
                _buildTab('Style', 2),
                _buildTab('Size', 3),
              ],
            ),
            const SizedBox(height: 20),
            // محتوى خيار التخصيص
            if (selectedTab == 0) ...[
              Row(
                children: [
                  _buildColorCircle(AppColors.navy, true),
                  _buildColorCircle(const Color(0xFF4A5568), false),
                  _buildColorCircle(const Color(0xFF2F855A), false),
                  _buildColorCircle(AppColors.primary, false),
                  _buildColorCircle(Colors.black, false),
                ],
              ),
              const SizedBox(height: 20),
              const Align(alignment: Alignment.centerLeft, child: Text('Add Embroidery', style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'e.g. Dr. Name',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
                    onPressed: () {},
                    child: const Text('ADD', style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String label, int index) {
    final isSelected = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedTab = index),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.navy : Colors.grey[200],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: isSelected ? Colors.white : AppColors.textDark, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildColorCircle(Color color, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? AppColors.primary : Colors.transparent, width: 2),
      ),
      child: CircleAvatar(backgroundColor: color, radius: 14),
    );
  }
}