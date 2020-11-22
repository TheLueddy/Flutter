import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPcrOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPcrOfTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(children: [
          Container(
            height: constraints.maxHeight * 0.13,
            margin: EdgeInsets.only(bottom: constraints.maxHeight * 0.03),
            child: FittedBox(
              child: Text('CHF'),
            ),
          ),
          Container(
            height: constraints.maxHeight * 0.13,
            child: FittedBox(
              child: Text('${spendingAmount.toStringAsFixed(0)}'),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.04,
          ),
          Container(
            width: 10,
            height: constraints.maxHeight * 0.5,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    heightFactor: spendingPcrOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.04,
          ),
          Container(
            height: constraints.maxHeight * 0.13,
            child: FittedBox(
              child: Text(label),
            ),
          ),
        ]);
      },
    );
  }
}
