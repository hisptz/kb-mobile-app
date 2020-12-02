import 'package:flutter/material.dart';

class ReferralTabsContainer extends StatelessWidget {
  const ReferralTabsContainer({
    Key key,
    @required this.themeColor,
    this.isDreamBeneficiary = false,
    this.isCaregiver = false,
    this.isOvcChild = false,
  }) : super(key: key);

  final bool isDreamBeneficiary;
  final bool isCaregiver;
  final bool isOvcChild;
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  height: 20.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  height: 20.0,
                ),
              ),
            ],
          )),
          Container(
            child: Text('referarral'),
          )
        ],
      ),
    );
  }
}
