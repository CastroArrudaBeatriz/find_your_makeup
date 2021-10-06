import 'package:find_your_makeup/pages/about_page.dart';
import 'package:find_your_makeup/pages/favorites_page.dart';
import 'package:find_your_makeup/util/colors.dart';
import 'package:find_your_makeup/widgets/brands_list.dart';
import 'package:flutter/material.dart';

class BrandsPage extends StatefulWidget {
  BrandsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BrandsPageState createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  int _currentScreen = 0;

  final List<Widget> _screens = [BrandsList(), FavoritePage(), AboutPage()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController(initialPage: 0);

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body:
          PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: _screens,
            onPageChanged: (page) {
              setState(() {
                _currentScreen = page;
              });
            },
          )
        ,

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: PalleteColors.darkPink,
        backgroundColor: PalleteColors.basePink,
        type: BottomNavigationBarType.fixed,

        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorites",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "about",
          ),

        ],

        currentIndex: _currentScreen,
        onTap: (index) => {
          setState(() {
            controller.jumpToPage(index);
            _currentScreen = index;
          })
        },
      ),
    );
  }
}
