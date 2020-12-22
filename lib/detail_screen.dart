import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/monumen.jpeg'),
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Monumen Kota Pekalongan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Open Everyday',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '09.00 - 20.00',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '09.00 - 20.00',
                        style: informationTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Jika kita melintas di Jalur Pantura, tepatnya di depan monumen kebanggaan Kota Pekalongan, Monumen Djoeang 45. Kita akan disuguhi pemandangan baru dari warisan sejarah tersebut. Monumen yang berdiri guna mengenang perjuangan rakyat Pekalongan menumpas penjajah Jepang pada 3 Oktober 1945 ini kembali direhab. Setelah kemarin ada peninggian, pavling, dan penambahan lampu. Kini monumen kembali direnovasi menjadi lebih bagus.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Image.network(
                'https://i.ytimg.com/vi/DG2kdgNLVjE/maxresdefault.jpg'),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                          'https://4.bp.blogspot.com/-QonScHPqG3s/VLPfq4nHNfI/AAAAAAAAAq0/11zulOlTAfs/s1600/monumen%2Bpekalongan.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                          'https://oss.pekalongankota.go.id/images/spsimpleportfolio/monumen.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                          'https://sigijateng.id/wp-content/uploads/2020/04/IMG-20200427-WA0002.jpg'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
