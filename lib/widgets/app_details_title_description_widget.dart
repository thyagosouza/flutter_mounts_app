import 'package:flutter/material.dart';

import '../models/mount_model.dart';

class DetailsTitleDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectedItem = mountItems[0];
    //MountModel currentMount = mountItems[index] ;
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
