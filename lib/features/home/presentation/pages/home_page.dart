import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:tepat_public_flutter/features/core/tepat_logo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPageIndex = 0;
  static const List<Widget> pages = <Widget>[
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  void onBottomNavigationTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const TepatLogoWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const HeroIcon(HeroIcons.bell),
          )
        ],
      ),
      body: Center(child: pages.elementAt(selectedPageIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        onTap: onBottomNavigationTapped,
        selectedItemColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.academicCap),
            label: 'Panduan',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.adjustments),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}
