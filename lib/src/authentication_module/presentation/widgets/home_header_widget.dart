import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 135,
          color: const Color(0xFF0054A6),
          child: Stack(
            children: [
              Positioned(
                top: 55,
                right: 16,
                child: IconButton(
                  icon: const Icon(Icons.notifications_active_outlined),
                  color: Colors.white,
                  onPressed: () {
                    // Handle notification button press
                  },
                ),
              ),
            ],
          ),
        ),
        const Divider(color: Color(0xFFF5C445), height: 5),
      ],
    );
  }
}
