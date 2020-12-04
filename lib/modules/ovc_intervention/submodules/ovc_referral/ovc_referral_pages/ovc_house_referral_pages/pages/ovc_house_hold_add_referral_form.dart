import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/ovc_house_hold_current_selection_state.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/service_event_data_state.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/service_form_state.dart';
import 'package:kb_mobile_app/app_state/intervention_card_state/intervention_card_state.dart';
import 'package:kb_mobile_app/core/components/Intervention_bottom_navigation_bar_container.dart';
import 'package:kb_mobile_app/core/components/circular_process_loader.dart';
import 'package:kb_mobile_app/core/components/entry_forms/entry_form_container.dart';
import 'package:kb_mobile_app/core/components/sub_page_app_bar.dart';
import 'package:kb_mobile_app/core/components/sup_page_body.dart';
import 'package:kb_mobile_app/core/utils/app_util.dart';
import 'package:kb_mobile_app/core/utils/tracked_entity_instance_util.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/models/intervention_card.dart';
import 'package:kb_mobile_app/models/ovc_house_hold.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/components/ovc_enrollment_form_save_button.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/components/ovc_house_hold_top_header.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_referral/models/ovc_referral.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_referral/ovc_referral_pages/ovc_house_referral_pages/constants/ovc_house_hold_referral_constant.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_referral/ovc_referral_pages/ovc_house_referral_pages/skip_logics/ovc_house_referral.dart';
import 'package:provider/provider.dart';

class OvcHouseHoldAddReferralForm extends StatefulWidget {
  OvcHouseHoldAddReferralForm({Key key}) : super(key: key);

  @override
  _OvcHouseHoldAddReferralFormState createState() =>
      _OvcHouseHoldAddReferralFormState();
}

class _OvcHouseHoldAddReferralFormState
    extends State<OvcHouseHoldAddReferralForm> {
  final String label = 'Household Referral Form';
  List<FormSection> formSections;
  bool isFormReady = false;
  bool isSaving = false;

  @override
  void initState() {
    super.initState();
    formSections = OvcReferral.getFormSections();
    Timer(Duration(seconds: 1), () {
      setState(() {
        isFormReady = true;
        evaluateSkipLogics();
      });
    });
  }

  evaluateSkipLogics() {
    Timer(
      Duration(milliseconds: 200),
      () async {
        Map dataObject =
            Provider.of<ServiceFormState>(context, listen: false).formState;
        await OvcHouseHoldReferralSkipLogic.evaluateSkipLogics(
          context,
          formSections,
          dataObject,
        );
      },
    );
  }

  void onInputValueChange(String id, dynamic value) {
    Provider.of<ServiceFormState>(context, listen: false)
        .setFormFieldState(id, value);
    evaluateSkipLogics();
  }

  void onSaveForm(
    BuildContext context,
    Map dataObject,
    OvcHouseHold currentOvcHouseHold,
  ) async {
    if (dataObject.keys.length > 0) {
      setState(() {
        isSaving = true;
      });
      String eventDate = dataObject['eventDate'];
      String eventId = dataObject['eventId'];
      dataObject[OvcHouseHoldReferralConstant.referralToFollowUpLinkage] =
          dataObject[OvcHouseHoldReferralConstant.referralToFollowUpLinkage] ??
              AppUtil.getUid();
      List<String> hiddenFields = [
        OvcHouseHoldReferralConstant.referralToFollowUpLinkage
      ];
      try {
        await TrackedEntityInstanceUtil.savingTrackedEntityInstanceEventData(
            OvcHouseHoldReferralConstant.program,
            OvcHouseHoldReferralConstant.referralStage,
            currentOvcHouseHold.orgUnit,
            formSections,
            dataObject,
            eventDate,
            currentOvcHouseHold.id,
            eventId,
            hiddenFields);
        Provider.of<ServiveEventDataState>(context, listen: false)
            .resetServiceEventDataState(currentOvcHouseHold.id);
        Timer(Duration(seconds: 1), () {
          setState(() {
            AppUtil.showToastMessage(
                message: 'Form has been saved successfully',
                position: ToastGravity.TOP);
            Navigator.pop(context);
          });
        });
      } catch (e) {
        Timer(Duration(seconds: 1), () {
          setState(() {
            AppUtil.showToastMessage(
                message: e.toString(), position: ToastGravity.BOTTOM);
          });
        });
      }
    } else {
      AppUtil.showToastMessage(
          message: 'Please fill at least one form field',
          position: ToastGravity.TOP);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SubPageBody(
        body: Container(
          child: Consumer<OvcHouseHoldCurrentSelectionState>(
            builder: (context, ovcHouseHoldCurrentSelectionState, child) {
              OvcHouseHold currentOvcHouseHold =
                  ovcHouseHoldCurrentSelectionState.currentOvcHouseHold;
              return Consumer<ServiceFormState>(
                builder: (context, serviceFormState, child) {
                  return Container(
                    child: Column(
                      children: [
                        OvcHouseHoldInfoTopHeader(
                          currentOvcHouseHold: currentOvcHouseHold,
                        ),
                        !isFormReady
                            ? Container(
                                child: CircularProcessLoader(
                                  color: Colors.blueGrey,
                                ),
                              )
                            : Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 10.0,
                                      left: 13.0,
                                      right: 13.0,
                                    ),
                                    child: EntryFormContainer(
                                      hiddenSections:
                                          serviceFormState.hiddenSections,
                                      hiddenFields:
                                          serviceFormState.hiddenFields,
                                      formSections: formSections,
                                      mandatoryFieldObject: Map(),
                                      isEditableMode:
                                          serviceFormState.isEditableMode,
                                      dataObject: serviceFormState.formState,
                                      onInputValueChange: onInputValueChange,
                                    ),
                                  ),
                                  OvcEnrollmentFormSaveButton(
                                    label: isSaving ? 'Saving ...' : 'Save',
                                    labelColor: Colors.white,
                                    buttonColor: Color(0xFF4B9F46),
                                    fontSize: 15.0,
                                    onPressButton: () => onSaveForm(
                                      context,
                                      serviceFormState.formState,
                                      currentOvcHouseHold,
                                    ),
                                  )
                                ],
                              )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: InterventionBottomNavigationBarContainer(),
    );
  }
}
