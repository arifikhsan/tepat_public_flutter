import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Temukan teknisi listrik dengan cepat',
              style: Theme.of(context).textTheme.headline1,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Butuh bantuan teknisi listrik? Daftar sekarang!',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar sebagai pelanggan'),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Anda adalah teknisi listrik? Ayo bergabung menjadi mitra Tepat!',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar sebagai teknisi'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
