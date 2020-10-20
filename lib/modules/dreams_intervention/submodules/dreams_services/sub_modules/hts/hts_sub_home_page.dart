import 'package:flutter/material.dart';
import 'package:kb_mobile_app/app_state/dreams_intervention_list_state/dream_current_selection_state.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/service_event_data_state.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/service_form_state.dart';
import 'package:kb_mobile_app/app_state/intervention_card_state/intervention_card_state.dart';
import 'package:kb_mobile_app/core/components/Intervention_bottom_navigation_bar_container.dart';
import 'package:kb_mobile_app/core/components/circular_process_loader.dart';
import 'package:kb_mobile_app/core/components/sub_page_app_bar.dart';
import 'package:kb_mobile_app/core/components/sup_page_body.dart';
import 'package:kb_mobile_app/core/utils/tracked_entity_instance_util.dart';
import 'package:kb_mobile_app/models/agyw_dream.dart';
import 'package:kb_mobile_app/models/events.dart';
import 'package:kb_mobile_app/models/intervention_card.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/components/dream_beneficiary_top_header.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/hts/hts_tb_home-page.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/hts/pages/agyw_dreams_hts_client_information.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/hts/pages/agyw_dreams_hts_consent_form.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/dreams_services/sub_modules/hts/pages/agyw_dreams_hts_consent_form_edit.dart';
import 'package:provider/provider.dart';
import 'components/dreams_sub_hts_list_card.dart';
import 'constants/agyw_dreams_hts_constant.dart';
import 'models/hts_model.dart';
import 'pages/agyw_dreams_hts_client_information_edit.dart';
import 'pages/agyw_dreams_hts_consent_for_release_status.dart';
import 'pages/agyw_dreams_hts_consent_for_release_status_edit.dart';

class HTSSubHomePage extends StatefulWidget {
  HTSSubHomePage({Key key, 
  @required this.eventId,
  this.htsIndexLinkage,
  }) : super(key: key);

  final String eventId;
  final DreamsHTSEvent htsIndexLinkage;

  @override
  _HTSSubHomePageState createState() => _HTSSubHomePageState();
}

class _HTSSubHomePageState extends State<HTSSubHomePage> {
  final String label = 'HTS';
  final bool canExpand = true;
  final bool canEdit = true;
  final bool canView = true;

  String toggleCardId = '';

  void onCardToogle(String cardId) {
    setState(() {
      toggleCardId = canExpand && cardId != toggleCardId ? cardId : '';
    });
  }

  List<String> programStageids = [AgywDreamsHTSConstant.programStage];
  @override
  void initState() {
    super.initState();
    // Provider.of<ServiveEventDataState>(context, listen: false)
    //     .resetServiceEventDataState(
    //         Provider.of<DreamBenefeciarySelectionState>(context, listen: false)
    //             .currentAgywDream
    //             .id);
  }

  void updateFormState(
    BuildContext context,
    bool isEditableMode,
    DreamsHTSEvent eventData,
  ) {
    Provider.of<ServiceFormState>(context, listen: false).resetFormState();
    Provider.of<ServiceFormState>(context, listen: false)
        .updateFormEditabilityState(isEditableMode: isEditableMode);
    if (eventData != null) {
      Provider.of<ServiceFormState>(context, listen: false)
          .setFormFieldState('eventDate', eventData.date);
      Provider.of<ServiceFormState>(context, listen: false)
          .setFormFieldState('eventId', eventData.id);
      for (Map datavalue in eventData.datavalues) {
        if (datavalue['value'] != '') {
          Provider.of<ServiceFormState>(context, listen: false)
              .setFormFieldState(datavalue['dataElement'], datavalue['value']);
        }
      }
    }
  }


void onViewConsent(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, false, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSConsentForm()));
   }
  void onEditConsent(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, true, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSConsentFormEdit()));
   }
   void onViewIntake(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, false, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSClientInformation()));
   }
  void onEditIntake(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, true, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSClientInformationEdit()));
   }
   void onViewStatus(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, false, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSConsentForReleaseStatus()));
   }
  void onEditStatus(BuildContext context, DreamsHTSEvent eventdata) {
    updateFormState(context, true, eventdata);
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => AgywDreamsHTSConsentForReleaseStatusEdit()));
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
            child: Consumer<DreamBenefeciarySelectionState>(
              builder: (context, dreamBenefeciarySelectionState, child) {
                return Consumer<ServiveEventDataState>(
                  builder: (context, serviceFormState, child) {
                    AgywDream agywDream =
                        dreamBenefeciarySelectionState.currentAgywDream;
                    bool isLoading = serviceFormState.isLoading;
                    Map<String, List<Events>> eventListByProgramStage =
                        serviceFormState.eventListByProgramStage;
                    List<Events> events = TrackedEntityInstanceUtil
                        .getAllEventListFromServiceDataState(
                            eventListByProgramStage, programStageids).where((Events eventData) => 
                            eventData.event == widget.eventId).toList();
                    List<DreamsHTSEvent> indexEvents =
                        events.map((Events eventData) => 
                        DreamsHTSEvent().fromTeiModel(eventData)
                        ).toList();
                    int sessionIndex = events.length + 1;
                    return Container(
                      child: Column(
                        children: [
                          DreamBenefeciaryTopHeader(
                            agywDream: agywDream,
                          ),
                          Container(
                            child: isLoading
                                ? CircularProcessLoader(
                                    color: Colors.blueGrey,
                                  )
                                : Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                        ),
                                        child: events.length == 0
                                            ? Text(
                                                'There is no details at a moment')
                                            : Container(
                                                margin: EdgeInsets.symmetric(
                                                  vertical: 5.0,
                                                  horizontal: 13.0,
                                                ),
                                                child: Column(
                                                  children: indexEvents
                                                      .map((DreamsHTSEvent eventData) {
                                                    sessionIndex--;
                                                    return Container(
                                                      margin: EdgeInsets.only(
                                                        bottom: 15.0,
                                                      ),
                                                      child:
                                                          DreamsSubHTSListCard(
                                                          onEditConsent: () =>
                                                            onEditConsent(
                                                                context,
                                                                eventData),
                                                          onViewConsent: () =>
                                                            onViewConsent(
                                                                context,
                                                                eventData),
                                                        onEditIntake: () =>
                                                            onEditIntake(
                                                                context,
                                                                eventData),
                                                          onViewIntake: () =>
                                                            onViewIntake(
                                                                context,
                                                                eventData),
                                                          onEditStatus: () =>
                                                            onEditStatus(
                                                                context,
                                                                eventData),
                                                          onViewStatus: () =>
                                                            onViewStatus(
                                                                context,
                                                                eventData),
                                                        eventData: eventData,
                                                        // tbCard:HTSTBHomePage(
                                                        //   htsToTBLinkageValue:eventData.htsTBLinkage,
                                                        // )
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                      )
                                    ],
                                  ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: InterventionBottomNavigationBarContainer());
  }
}
