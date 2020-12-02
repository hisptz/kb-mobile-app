import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kb_mobile_app/app_state/dreams_intervention_list_state/dream_current_selection_state.dart';
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
import 'package:kb_mobile_app/models/agyw_dream.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/models/intervention_card.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/components/dream_beneficiary_top_header.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/models/dreap_service_prep_intake_form_info.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/prep/agyw_dreams_prep.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/prep/constants/prep_intake_constant.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/prep/skip_logics/agyw_dreams_prep_skip_logic.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/components/ovc_enrollment_form_save_button.dart';
import 'package:provider/provider.dart';

class AgywDreamsPrepFormPage extends StatefulWidget {
  AgywDreamsPrepFormPage({Key key}) : super(key: key);

  @override
  _AgywDreamsPrepFormPageState createState() => _AgywDreamsPrepFormPageState();
}

class _AgywDreamsPrepFormPageState extends State<AgywDreamsPrepFormPage> {
  final String label = 'AGYW Prep Intake Form';
  List<FormSection> formSections;
  List<String> mandatoryFields;
  Map mandatoryFieldObject = Map();
  bool isFormReady = false;
  bool isSaving = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      formSections = DreamsServicePrepIntakeInfo.getFormSections();
      mandatoryFields  =
          DreamsServicePrepIntakeInfo.getMandatoryField();
      for (String id in mandatoryFields) {
        mandatoryFieldObject[id] = true;
      }
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
        await AgywDreamsPrepSkipLogic.evaluateSkipLogics(
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

  void onSaveForm(BuildContext context, Map dataObject, AgywDream agywDream,
      {hiddenFields = const {}}) async {
    bool hadAllMandatoryFilled = AppUtil.hasAllMandarotyFieldsFilled(
        mandatoryFields, dataObject,
        hiddenFields: hiddenFields);

    if (hadAllMandatoryFilled) {
      setState(() {
        isSaving = true;
      });
      String eventDate = dataObject['eventDate'];
      String eventId = dataObject['eventId'];
      List<String> hiddenFields = [];
      try {
        await TrackedEntityInstanceUtil.savingTrackedEntityInstanceEventData(
            PrepIntakeConstant.program,
            PrepIntakeConstant.programStage,
            agywDream.orgUnit,
            formSections,
            dataObject,
            eventDate,
            agywDream.id,
            eventId,
            hiddenFields);
        Provider.of<ServiveEventDataState>(context, listen: false)
            .resetServiceEventDataState(agywDream.id);
        Timer(Duration(seconds: 1), () {
          setState(() {
            AppUtil.showToastMessage(
                message: 'Form has been saved successfully',
                position: ToastGravity.TOP);
            Navigator.popUntil(context, (route) => route.isFirst);
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AgywDreamsPrep()));
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
          message: 'Please fill all mandatory field',
          position: ToastGravity.TOP);
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
          body: Container(child: Consumer<DreamBenefeciarySelectionState>(
            builder: (context, nonAgywState, child) {
              AgywDream agywDream = nonAgywState.currentAgywDream;
              return Consumer<ServiceFormState>(
                builder: (context, serviceFormState, child) {
                  return Container(
                    child: Column(
                      children: [
                        DreamBenefeciaryTopHeader(
                          agywDream: agywDream,
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
                                      hiddenFields:
                                          serviceFormState.hiddenFields,
                                      hiddenSections:
                                          serviceFormState.hiddenSections,
                                      formSections: formSections,
                                      mandatoryFieldObject:
                                          mandatoryFieldObject,
                                      isEditableMode:
                                          serviceFormState.isEditableMode,
                                      dataObject: serviceFormState.formState,
                                      onInputValueChange: onInputValueChange,
                                    ),
                                  ),
                                  Visibility(
                                    visible: serviceFormState.isEditableMode,
                                    child: OvcEnrollmentFormSaveButton(
                                      label: isSaving ? 'Saving ...' : 'Save',
                                      labelColor: Colors.white,
                                      buttonColor: Color(0xFF258DCC),
                                      fontSize: 15.0,
                                      onPressButton: () => onSaveForm(
                                          context,
                                          serviceFormState.formState,
                                          agywDream, hiddenFields: serviceFormState.hiddenFields),
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
          )),
        ),
        bottomNavigationBar: InterventionBottomNavigationBarContainer());
  }
}
