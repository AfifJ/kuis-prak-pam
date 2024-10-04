class HelpItem {
  String title;
  String desc;

  HelpItem({
    required this.title,
    required this.desc,
  });
}

var helpItemList = [
  HelpItem(
    title: 'Pertanyaan Umum (FAQ)',
    desc:
        'Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda.',
  ),
  HelpItem(
    title: 'Panduan Penggunaan',
    desc:
        'Pelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah.',
  ),
  HelpItem(
    title: 'Kontak Dukungan',
    desc:
        'Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.',
  ),
];
