import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_buttons.dart';
import 'package:wallet_app_ui/utils/my_card.dart';
import 'package:wallet_app_ui/utils/my_listtile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink.shade600,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.attach_money_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'My ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Cards',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[300]),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 5250.30,
                      cardNumber: 394529384759283,
                      expiryMonth: 10,
                      expiryYear: 26,
                      bgColor: Colors.deepPurple[400],
                      iconPath: 'assets/icons/visa.png',
                      cardIconColor: Colors.white,
                    ),
                    MyCard(
                      balance: 3465.30,
                      cardNumber: 394529384759283,
                      expiryMonth: 10,
                      expiryYear: 26,
                      bgColor: Colors.grey[700],
                      iconPath: 'assets/icons/money.png',
                      cardIconColor: Colors.white,
                    ),
                    MyCard(
                      balance: 8752.30,
                      cardNumber: 394529384759283,
                      expiryMonth: 10,
                      expiryYear: 26,
                      bgColor: Colors.grey[900],
                      iconPath: 'assets/icons/paypal.png',
                      cardIconColor: Colors.white,
                    ),
                    MyCard(
                      balance: 4387.30,
                      cardNumber: 394529384759283,
                      expiryMonth: 10,
                      expiryYear: 26,
                      bgColor: Colors.purple[400],
                      iconPath: 'assets/icons/stripe.png',
                      cardIconColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 25,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButtons(
                      myCardButtonText: 'Send',
                      myCardIconPath: 'assets/icons/dollar.png',
                    ),
                    MyButtons(
                      myCardButtonText: 'Bills',
                      myCardIconPath: 'assets/icons/bill.png',
                    ),
                    MyButtons(
                      myCardButtonText: 'Pay',
                      myCardIconPath: 'assets/icons/transaction.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              MyListTile(
                containerColor: Colors.deepPurple.shade900,
                tileIconPath: 'assets/icons/bar-chart.png',
                tileSubTitle: 'Pyament and Income',
                tileTitle: 'Statistics',
                iconColor: Colors.white,
              ),
              MyListTile(
                containerColor: Colors.blue.shade300,
                tileIconPath: 'assets/icons/transaction.png',
                tileSubTitle: 'Transaction History',
                tileTitle: 'Transaction',
                iconColor: Colors.white,
              ),
              MyListTile(
                containerColor: Colors.green.shade300,
                tileIconPath: 'assets/icons/personal.png',
                tileSubTitle: 'Loan History',
                tileTitle: 'Loan',
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
