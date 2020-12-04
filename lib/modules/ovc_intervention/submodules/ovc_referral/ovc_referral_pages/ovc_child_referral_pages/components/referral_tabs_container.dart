import 'package:flutter/material.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_referral/ovc_referral_pages/ovc_child_referral_pages/components/clo_referral_container.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_referral/ovc_referral_pages/ovc_child_referral_pages/components/ovc_child_referral.dart';

class ReferralTabsContainer extends StatefulWidget {
  const ReferralTabsContainer({
    Key key,
    @required this.themeColor,
    this.isDreamBeneficiary = false,
    this.isCaregiver = false,
    this.isOvcChild = false,
    @required this.isCloManager,
  }) : super(key: key);

  final bool isDreamBeneficiary;
  final bool isCaregiver;
  final bool isOvcChild;
  final bool isCloManager;
  final Color themeColor;

  @override
  _ReferralTabsContainerState createState() => _ReferralTabsContainerState();
}

class _ReferralTabsContainerState extends State<ReferralTabsContainer> {
  bool _isCloReferralActive = false;

  void onActivateReferral() {
    _isCloReferralActive = false;
    setState(() {});
  }

  void onActivateCloReferral() {
    _isCloReferralActive = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            color: Colors.black12,
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    clipBehavior: Clip.hardEdge,
                    height: 45.8,
                    color: !_isCloReferralActive
                        ? widget.themeColor
                        : Colors.transparent,
                    onPressed: onActivateReferral,
                    child: Text(
                      'Referral',
                      style: TextStyle().copyWith(
                        fontSize: 14.0,
                        color: !_isCloReferralActive
                            ? Colors.white
                            : widget.themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    height: 45.8,
                    color: _isCloReferralActive
                        ? widget.themeColor
                        : Colors.transparent,
                    onPressed: onActivateCloReferral,
                    child: Text(
                      'CLO Referral',
                      style: TextStyle().copyWith(
                        fontSize: 14.0,
                        color: _isCloReferralActive
                            ? Colors.white
                            : widget.themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: _isCloReferralActive
                ? Container(
                    child: CloReferralContainer(
                      themeColor: widget.themeColor,
                      isCaregiver: widget.isCaregiver,
                      isDreamBeneficiary: widget.isDreamBeneficiary,
                      isOvcChild: widget.isOvcChild,
                      isCloManager: widget.isCloManager,
                    ),
                  )
                : Container(
                    child: widget.isOvcChild
                        ? OvcChildReferral()
                        : Container(
                            child: Text(
                              'Coming soon for dreams or house hold referral',
                            ),
                          ),
                  ),
          )
        ],
      ),
    );
  }
}
