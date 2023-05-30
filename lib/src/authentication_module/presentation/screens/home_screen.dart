import 'package:flutter/material.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/home_header_widget.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/request_card_widget.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/request_title_widget.dart';
import 'package:zajil/src/authentication_module/presentation/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeaderWidget(),
              const SizedBox(height: 35),
              const RequestTitleWidget(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                  child: ListView(
                    children: const [
                      RequestCardWidget(
                        distance: '3 KM',
                        title: 'Al Yasmin Outlet',
                        status: 'Status',
                        smallText: '12 Shipments',
                      ),
                      SizedBox(height: 16),
                      RequestCardWidget(
                        distance: '3 KM',
                        title: 'An Nazim Outlet',
                        status: 'Status',
                        smallText: '28 Shipments',
                      ),
                      SizedBox(height: 16),
                      RequestCardWidget(
                        distance: '3 KM',
                        title: 'Riyadh Outlet',
                        status: 'Status',
                        smallText: '35 Shipments',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 75,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Ahmed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                SearchBarWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
