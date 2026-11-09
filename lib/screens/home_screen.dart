import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/animated_background.dart';
import '../widgets/glass_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          const AnimatedBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'مرحباً بك',
                    style: GoogleFonts.tajawal(fontSize: 20, color: Colors.white70),
                  ),
                  Text(
                    'عالم التصميم الفخم',
                    style: GoogleFonts.tajawal(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  
                  // بحث
                  GlassCard(
                    height: 60,
                    radius: 20,
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        const Icon(Icons.search, color: Colors.white70),
                        const SizedBox(width: 10),
                        Text('ابحث عن أي شيء...', style: GoogleFonts.tajawal(color: Colors.white54, fontSize: 16)),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // بطاقات المنتجات
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GlassCard(
                            height: 160,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                        colors: [Color(0xFF0A84FF), Color(0xFF5E5CE6)],
                                      ),
                                    ),
                                    child: const Icon(Icons.star, color: Colors.white, size: 40),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'تصميم زجاجي ${index + 1}',
                                          style: GoogleFonts.tajawal(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'لمسة احترافية فخمة',
                                          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.white54),
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$${index * 50 + 99}',
                                              style: GoogleFonts.tajawal(fontSize: 20, fontWeight: FontWeight.w900, color: const Color(0xFFF093FB)),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(Icons.add_shopping_cart, color: Colors.white, size: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}