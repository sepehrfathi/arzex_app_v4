import 'package:flutter/material.dart';
import 'dart:js' as js;

class FYItem extends StatelessWidget {
  final bool active;
  final IconData icon;
  final String text;
  const FYItem({
    Key? key,
    required this.active,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: active ? const Color(0xff177DFF) : const Color(0xffF3F3F3)),
        width: 120,
        height: 120,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: active ? Colors.white : Colors.grey[700],
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [
                    'https://arzex.top/404/?login=true&page=1&redirect_to=https%3A%2F%2Farzex.top%2F404%2F'
                  ]);
                },
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'mr',
                      fontSize: 14,
                      color: active ? Colors.white : Colors.grey[800],
                      fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
