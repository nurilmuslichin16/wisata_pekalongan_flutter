import 'package:flutter/material.dart';
import 'package:wisata_pekalongan/detail_screen.dart';
import 'package:wisata_pekalongan/model/tempat_wisata.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Pekalongan"),
      ),
      body: ListView(
          children: tempatWisataList.map((tempat) {
        return FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(tempat: tempat);
            }));
          },
          child: Card(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: Image.asset(tempat.imageAsset)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tempat.name,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(tempat.location)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}

var tempatWisataList = [
  TempatWisata(
    name: 'Museum Batik Pekalongan',
    location: 'Pekalongan',
    description:
        'Museum Batik Pekalongan adalah museum batik yang beralamat di Jalan Jetayu No.1 Pekalongan, Jawa Tengah.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/museum_batik.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  TempatWisata(
    name: 'Bahari Pekalongan',
    location: 'Pekalongan',
    description:
        'PPN Pekalongan memiliki kawasan Wisata Bahari sebagai salah satu  sarana rekreasi yang bersifat edukatif untuk menanamkan nilai-nilai kebaharian bagi masyarakat umum dan dunia pendidikan.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/bahari.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0d/6a/88/9b/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/3f/04/39/p-20171111-110220-largejpg.jpg',
    ],
  ),
  TempatWisata(
    name: 'Curug Bajing',
    location: 'Kabupaten Pekalongan',
    description:
        'Curug dengan ketinggian 1300 mdpl ini ternyata tak kalah indah dengan curug muncar. Ada hawa sejuk dan cenderung dingin cocok untuk merefresh segala kepenatan yang anda rasakan. Curug Bajing berketinggian air terjun kurang lebih 70 meter dan aliran airnya juga cukup deras. Untuk bisa menuju lokasi ini, anda harus berjalan kaki sekitar 15 menit dari tempat parkir.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/curug_bajing.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
    ],
  ),
  TempatWisata(
    name: 'Desa Wisata Lolong',
    location: 'Kabupaten Pekalongan',
    description:
        'Tempat wisata yang satu ini seolah memberi kebahagiaan bagi para pecinta durian. Sebab, di Desa Wisata Lolong ini terkenal akan buah durian dengan kualitas unggulan. Bagi para pecinta durian juga pasti menginginkan makan buah durian langsung di tempatnya. Tak heran jika banyak keluarga yang datang dan menikmati liburan di sini.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 17:00',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/lolong.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
    ],
  )
];
