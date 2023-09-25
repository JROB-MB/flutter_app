import 'package:flutter/material.dart';

class CardCointainer extends StatelessWidget {
  final Widget child;


  const CardCointainer({key? key, required this});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: _createCardShape(),
        child: this.child,
      ),
    );
  }
}
