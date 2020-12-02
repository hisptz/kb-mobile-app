import 'package:flutter/material.dart';

class ReferralTabsContainer extends StatelessWidget {
  const ReferralTabsContainer({
    Key key,
  }) : super(key: key);

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
