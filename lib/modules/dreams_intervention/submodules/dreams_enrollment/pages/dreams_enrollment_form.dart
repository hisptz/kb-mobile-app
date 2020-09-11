import 'package:flutter/material.dart';
import 'package:kb_mobile_app/app_state/intervention_card_state/intervention_card_state.dart';
import 'package:kb_mobile_app/core/components/Intervention_bottom_navigation_bar.dart';
import 'package:kb_mobile_app/core/components/sub_page_app_bar.dart';
import 'package:kb_mobile_app/models/intervention_card.dart';
import 'package:provider/provider.dart';

class DreamsEnrollmentForm extends StatelessWidget {
  const DreamsEnrollmentForm({Key key}) : super(key: key);

  final String label = 'Enrollement';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(65.0),
              child: Consumer<IntervetionCardState>(
                builder: (context, intervetionCardState, child) {
                  InterventionCard activeInterventionProgram =
                      intervetionCardState.currentIntervetionProgram;
                  return SubPageAppBar(
                    label: label,
                    activeInterventionProgram: activeInterventionProgram,
                  );
                },
              ),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
            bottomNavigationBar: Consumer<IntervetionCardState>(
              builder: (context, intervetionCardState, child) {
                InterventionCard activeInterventionProgram =
                    intervetionCardState.currentIntervetionProgram;
                return InterventionBottomNavigationBar(
                    activeInterventionProgram: activeInterventionProgram);
              },
            )));
  }
}
