import 'package:flutter/material.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/service_form_state.dart';
import 'package:kb_mobile_app/core/utils/form_util.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:provider/provider.dart';

class OvcChildCLOReferralSkipLogic {
  static Map hiddenFields = Map();
  static Map hiddenSections = Map();

  static Future evaluateSkipLogics(
    BuildContext context,
    List<FormSection> formSections,
    Map dataObject,
  ) async {
    hiddenFields.clear();
    hiddenSections.clear();
    List<String> inputFieldIds = FormUtil.getFormFieldIds(formSections);
    for (String inputFieldId in inputFieldIds) {
      String value = '${dataObject[inputFieldId]}';

      
      if ((inputFieldId == 'NbQGlx6QZpK_clo_type' &&
          value != 'NbQGlx6QZpK_Received')) {
        hiddenSections['OIUDljKyNgy_clo_received'] = true;
      }
      if ((inputFieldId == 'NbQGlx6QZpK_clo_type' &&
          value != 'NbQGlx6QZpK_OnGoing')) {
        hiddenSections['g6J1vZ2kDXB_clo_outgoing'] = true;
      }
    }
    for (String sectionId in hiddenSections.keys) {
      List<FormSection> allFormSections =
          FormUtil.getFlattenFormSections(formSections);
      List<String> hidddenSectionInputFieldIds = FormUtil.getFormFieldIds(allFormSections
          .where((formSection) => formSection.id == sectionId)
          .toList());      
      for (String inputFieldId in hidddenSectionInputFieldIds) {

        hiddenFields[inputFieldId] = true;
      }
    }
    resetValuesForHiddenFields(context, hiddenFields.keys);
    resetValuesForHiddenSections(context, formSections);
  }

  static resetValuesForHiddenFields(BuildContext context, inputFieldIds) {
    for (String inputFieldId in inputFieldIds) {
      if (hiddenFields[inputFieldId]) {
        assignInputFieldValue(context, inputFieldId, null);
      }
    }
    Provider.of<ServiceFormState>(context, listen: false)
        .setHiddenFields(hiddenFields);
  }

  static resetValuesForHiddenSections(
    BuildContext context,
    List<FormSection> formSections,
  ) {
    Provider.of<ServiceFormState>(context, listen: false)
        .setHiddenSections(hiddenSections);
  }

  static assignInputFieldValue(
    BuildContext context,
    String inputFieldId,
    String value,
  ) {
    Provider.of<ServiceFormState>(context, listen: false)
        .setFormFieldState(inputFieldId, value);
  }
}
