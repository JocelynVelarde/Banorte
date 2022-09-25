import 'package:flutter/material.dart';
import 'package:flutter_application_3/utilities/themeStyles.dart';
import 'package:flutter_application_3/widgets/TransactionCardd.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transacciones Recientes',
                    style: ThemeStyles.primaryTitle),
                Text('Ver Todas',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.lightGreen,
                  letter: 'P',
                  title: 'PAYPAL',
                  subTitle: '11:45 am - Sept 20',
                  price: '- 5.720,30 ',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'D',
                  title: 'Deposito de...',
                  subTitle: '5:12 pm - Sept 12',
                  price: '- 59,85',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'K',
                  title: 'KFC',
                  subTitle: '6:56 pm - Sept 2',
                  price: '- 59,99',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
