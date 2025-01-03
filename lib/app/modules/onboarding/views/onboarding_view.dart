import 'package:cots/app/design_system/colors/primary_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../design_system/typography/text_styles.dart';

class OnboardingView extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingSlide(
              image: 'assets/images/login.png',
              title: "Selamat datang di gojek!",
              description: "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin  semua kebutuhan mu, kapanpun, dan di manapun"),
          OnboardingSlide(
              image: 'assets/images/boarding2.png',
              title: "Transportasi & logistik",
              description: "Antarin kamu jalan atau ambilin barang lebih gampang tinggal  ngeklik doang~"),
          OnboardingSlide(
              image: 'assets/images/boarding3.png',
              title: "Pesan makan & belanja",
              description: "Lagi ngidam sesuatu? Gojek beliin gak pakai lama."),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/login'); // Navigasi ke halaman login
              },
              child: Text("Go to Login", style: TextStyles.button),
              style: ElevatedButton.styleFrom(
                backgroundColor: PrimaryColors.secondary,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                // Logika untuk registrasi jika diperlukan
                // Navigasi ke halaman register
              },
              child: Text("Belum Ada Akun? Daftar dulu", style: TextStyles.body1),
              style: ElevatedButton.styleFrom(
                backgroundColor: PrimaryColors.textPrimary,
                foregroundColor: PrimaryColors.secondary,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingSlide extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingSlide({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300),
        const SizedBox(height: 24),
        Text(title, style: TextStyles.heading1),
        const SizedBox(height: 8),
        Text(description, style: TextStyles.body2, textAlign: TextAlign.center),
      ],
    );
  }
}
