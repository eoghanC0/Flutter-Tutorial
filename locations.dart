import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  final List<String> locations;

  Locations(this.locations) { 
    print('PRODUCTS WIDGET CONSTRUCTER');
  }

  @override
  Widget build(BuildContext context) {
        print('PRODUCTS WIDGET CONSTRUCTER BUILD');
    return Column(
      children: locations
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/water.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
