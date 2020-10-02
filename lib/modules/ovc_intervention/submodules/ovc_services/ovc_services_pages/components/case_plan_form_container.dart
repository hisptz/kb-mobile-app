import 'package:flutter/material.dart';
import 'package:kb_mobile_app/core/components/entry_forms/entry_form_container.dart';
import 'package:kb_mobile_app/core/components/material_card.dart';
import 'package:kb_mobile_app/core/utils/app_util.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_services/models/ovc_services_caseplan_gaps.dart';
import 'package:kb_mobile_app/modules/ovc_intervention/submodules/ovc_services/ovc_services_pages/components/case_plan_gap_form_container.dart';

class CasePlanFormContainer extends StatelessWidget {
  CasePlanFormContainer({
    Key key,
    @required this.formSectionColor,
    @required this.formSection,
    @required this.isEditableMode,
    @required this.dataObject,
    this.onInputValueChange,
  }) : super(key: key);

  final Color formSectionColor;
  final FormSection formSection;
  final bool isEditableMode;
  final Map dataObject;
  final Function onInputValueChange;

  final String caseToGapLinkage = 'ajqTV28fydL';

  void onAddNewGap(BuildContext context) async {
    Map gapDataObject = Map();
    gapDataObject[caseToGapLinkage] = dataObject[caseToGapLinkage];
    List<FormSection> formSections = OvcServicesCasePlanGaps.getFormSections()
        .where((FormSection form) => form.id == formSection.id)
        .toList();
    formSections = formSections.map((FormSection form) {
      form.borderColor = Colors.transparent;
      return form;
    }).toList();
    Widget modal = CasePlanGapFormContainer(
      formSections: formSections,
      isEditableMode: isEditableMode,
      formSectionColor: formSectionColor,
      dataObject: gapDataObject,
    );
    var response = await AppUtil.showPopUpModal(context, modal, true);
    print(response);
    if (response != null) {
      // setState(() {
      //   casePlanGapObjects.add(response);
      // });
    }
  }

  void onValueChange(String id, dynamic value) {
    // do appropriate action on changes on in inputs
    print('$id $value');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
        ),
        child: MaterialCard(
          body: Container(
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
                border: Border(
              left: BorderSide(
                color: formSectionColor,
                width: 8.0,
              ),
            )),
            child: Column(
              children: [
                EntryFormContainer(
                  elevation: 0.0,
                  formSections: [formSection],
                  mandatoryFieldObject: Map(),
                  dataObject: dataObject,
                  isEditableMode: isEditableMode,
                  onInputValueChange: onValueChange,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: formSectionColor.withOpacity(0.2),
                  ),
                  // child: Row(
                  //   children: (dataObject['gaps'] ?? [])
                  //       .map((Map dataObject) => Text('Data'))
                  //       .toList(),
                  // ),
                ),
                Visibility(
                  visible: isEditableMode,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: FlatButton(
                        onPressed: () => onAddNewGap(context),
                        color: formSectionColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: formSectionColor),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 40.0,
                          ),
                          child: Text('Add Gap',
                              style: TextStyle().copyWith(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              )),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}