import 'package:flutter/material.dart';

class ReferralTabsContainer extends StatelessWidget {
  const ReferralTabsContainer({
    Key key,
    @required this.themeColor,
    @required this.isDreamBeneficiary,
    @required this.isCaregiver,
    @required this.isOvcChild,
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
            child: Text('Tabs'),
          ),
          Container(
            child: Text('referarral'),
          )
        ],
      ),
    );
  }
}
