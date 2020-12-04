import 'package:flutter/material.dart';

class CloReferralContainer extends StatelessWidget {
  const CloReferralContainer({
    Key key,
    @required this.isDreamBeneficiary,
    @required this.isCaregiver,
    @required this.isOvcChild,
    @required this.isCloManager,
    @required this.themeColor,
  }) : super(key: key);

  final bool isDreamBeneficiary;
  final bool isCaregiver;
  final bool isOvcChild;
  final bool isCloManager;
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      height: 200.0,
      width: double.infinity,
      child: Text('Clo Referral for child'),
    );
  }
}
