import 'package:flutter/cupertino.dart';

class Onboard {
  final String imageURL;
  final String title;
  final String description;

  Onboard({
    @required this.imageURL,
    @required this.title,
    @required this.description,
  });
}

final onboardList = [
  Onboard(
    imageURL: 'assets/onboard_image1.png',
    title: 'Ikuti berbagai Event',
    description:
        'Akses mudah ke berbagai event webinar sesuai dengan preferensi yang dapat anda pilih',
  ),
  Onboard(
    imageURL: 'assets/onboard_image2.png',
    title: 'Pembelian Tiket',
    description:
        'Pemesanan tiket secara langsung dengan berbagai metode pembayaran yang tersedia',
  ),
  Onboard(
    imageURL: 'assets/onboard_image3.png',
    title: 'Dapatkan Notifikasi',
    description:
        'Webinar yang telah berhasil dibeli secara otomatis akan masuk ke jadwal harian anda',
  ),
];
