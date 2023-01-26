import 'package:flutter/material.dart';
import 'package:flurry_navigation/flurry_navigation.dart';

final Screen firstscreen = Screen(
    contentBuilder: (BuildContext context) {
      return Center(
        child: Container(
          height:100.0,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                Expanded(
                    child: Center(
                        child: Text('Welcome to your home')
                    )
                )
              ],
            ),
          ),
        ),

      );
    }
);