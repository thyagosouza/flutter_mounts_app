import 'package:flutter/material.dart';

import '../models/mount_model.dart';

class DetailsTitleDescriptionWidget extends StatelessWidget {
  var mountId = 0;

  @override
  Widget build(BuildContext context) {
    var mountGotId = mountItems.first.id;
    var selectedItem = mountItems[mountId];
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text('About ${selectedItem.name}',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text('About ${selectedItem.description}',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
