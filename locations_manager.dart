import 'package:flutter/material.dart';

import './locations.dart';

class LocationsManager extends StatefulWidget {
 final String startingProduct;

  LocationsManager({this.startingProduct = 'SweetesTEster'}) {
    print('PRODUCTS MANAGER WIDGET CONSTRUCTER');
  }
  @override
  State<StatefulWidget> createState() {
        print('PRODUCTS MANAGER WIDGET CREATE STATE');
    return _LocationsManagerState();
  }
}

class _LocationsManagerState extends State<LocationsManager> {
  List<String> _locations = [];

@override
  void initState() {
        print('PRODUCTS MANAGER WIDGET INIT STATE');
    _locations.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(LocationsManager oldWidget) {
print('PRODUCTS MANAGER WIDGET DID WIDGET UPDATE');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
        print('PRODUCTS MANAGER WIDGET BUILD');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _locations.add('Spain');
              });
            },
            child: Text('Add Location'),
          ),
        ),
        Locations(_locations)
      ],
    );
  }
}
