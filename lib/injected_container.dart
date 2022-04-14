import 'package:flutter/material.dart';

class InjectedContainer {
  Widget get injectedContainer => Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          color: Colors.yellow,
          child: const Center(
            child: Text(
              'GET_IT',
              style: TextStyle(fontSize: 50, color: Colors.green),
            ),
          ),
        ),
      );
}
