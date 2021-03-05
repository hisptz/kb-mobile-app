import 'package:flutter/material.dart';
import 'package:kb_mobile_app/app_state/enrollment_service_form_state/enrollment_form_state.dart';
import 'package:kb_mobile_app/core/utils/app_util.dart';
import 'package:kb_mobile_app/core/utils/form_util.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/none_agyw/constant/non_agyw_hts_constant.dart';
import 'package:provider/provider.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/none_agyw/constant/non_agyw_hts_constant.dart';
import 'package:kb_mobile_app/modules/dreams_intervention/submodules/none_agyw/constant/non_agyw_prep_visit_constant.dart';
import 'package:kb_mobile_app/core/utils/date_conversion_util.dart';

class NoneAgywEnrollmentSkipLogic {
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
    for (var key in dataObject.keys) {
      inputFieldIds.add('$key');
    }
    inputFieldIds = inputFieldIds.toSet().toList();
    dataObject[NonAgywPrepVisitConstant.clientWeight] =
        dataObject[NonAgywDreamsHTSConstant.weight];
    for (String inputFieldId in inputFieldIds) {
      String value = '${dataObject[inputFieldId]}';
      if (inputFieldId == 'qZP982qpSPS') {
        int age = AppUtil.getAgeInYear(value);
        assignInputFieldValue(context, 'ls9hlz2tyol', age.toString());
      }
      if (inputFieldId == 'NDigy1JKTNV' && value != 'true') {
        hiddenFields['wRU2FLKUXer'] = true;
      }
      if (inputFieldId == 's1eRvsL2Ly4' && value != 'Other') {
        hiddenFields['DuWh8Gqwmjf'] = true;
      }
      if (inputFieldId == 'Y4dPrHZt7zu' && value != 'true') {
        hiddenFields['yHAjVqDrXuk'] = true;
      }
      if (inputFieldId == 'vUobJnyivtf' && value != 'true') {
        hiddenFields['Lj7CDNvvtw5'] = true;
      }
      if (inputFieldId == 'ulJwlQIOLQA' && value != 'true') {
        hiddenFields['CcMOQFuS5Uy'] = true;
      }
      if (inputFieldId == 'wI9gNztaVzD' && value != '1') {
        hiddenFields['BL8liR3gxy6'] = true;
      }
      if (inputFieldId == 'W8mAvBSM3Pg' && value != 'true') {
        hiddenFields['fT7eqY4H5f4'] = true;
      }
      if (inputFieldId == 'tB5Htsd5jlr' && value != 'true') {
        hiddenFields['zXlncmz51aw'] = true;
      }
      if (inputFieldId == 'MlgzbQNpeqj' && value != 'true') {
        hiddenFields['MlgzbQNpeqj_checkbox'] = true;
      }
      if (inputFieldId == 'RHPU8hatG4H' && value != 'Other') {
        hiddenFields['DuWh8Gqwmjf'] = true;
      }

      if (inputFieldId == 'WAlaenCYazT' && value != 'true') {
        hiddenFields['ZUhWRJSajUE'] = true;
        hiddenFields['K9y9eMHeSfa'] = true;
        hiddenFields['T4jtufXMh73'] = true;
      }
      if (inputFieldId == 'IJUy3A0IVpr' && value != 'true') {
        hiddenFields['Hr43Ub9GNyP'] = true;
      }
      if (inputFieldId == 'eOy1XwiYC8H' && value != 'true') {
        hiddenFields['X2m9v2E5WaI'] = true;
      }
      if (inputFieldId == 'w4DBU1hJtxd' && value != 'true') {
        hiddenFields['IYD4dA4EBnX'] = true;
      }
      // Assign HIV results
      if (inputFieldId == 'dQBja8nUr18') {
        if (dataObject[NonAgywDreamsHTSConstant.hivResultStatus] ==
            'Negative') {
          dataObject[inputFieldId] = 'true';
        } else {
          dataObject[inputFieldId] = 'false';
        }
      }
      // Assign type of test used
      // if (inputFieldId == '') {}
      // Assign date tested
      if (inputFieldId == 'oZPPEMZ0hXt') {
        dataObject[inputFieldId] =
            '${AppUtil.formattedDateTimeIntoString(DateTime.now())}';
        print(dataObject[inputFieldId]);
      }
      // assing Rapid test result
      if (dataObject[NonAgywDreamsHTSConstant.t1Result] == null &&
          dataObject[NonAgywDreamsHTSConstant.t2Result] == null) {
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult1] = true;
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult2] = true;
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled1] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled2] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled3] = true;
      } else if (dataObject[NonAgywDreamsHTSConstant.t1Result] == null) {
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult1] = true;
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled1] = true;
        dataObject[NonAgywPrepVisitConstant.prepRapidTestResult2] =
            dataObject[NonAgywDreamsHTSConstant.t2Result];
      } else if (dataObject[NonAgywDreamsHTSConstant.t2Result] == null) {
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult2] = true;
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled2] = true;
        dataObject[NonAgywPrepVisitConstant.prepRapidTestResult1] =
            dataObject[NonAgywDreamsHTSConstant.t1Result];
      } else {
        dataObject[NonAgywPrepVisitConstant.prepRapidTestResult1] =
            dataObject[NonAgywDreamsHTSConstant.t1Result];
        dataObject[NonAgywPrepVisitConstant.prepRapidTestResult2] =
            dataObject[NonAgywDreamsHTSConstant.t2Result];
        hiddenFields[NonAgywPrepVisitConstant.prepRapidTestResult3] = true;
        hiddenFields[NonAgywPrepVisitConstant.dateBled3] = true;
      }
      // calculate period between
      if (inputFieldId ==
              NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults &&
          dataObject[NonAgywPrepVisitConstant.clientInformedOfTestResults] !=
              null) {
        bool hasTestDate = true;
        DateTime resultDate = DateTime.parse(
            '${dataObject[NonAgywPrepVisitConstant.clientInformedOfTestResults]}');
        DateTime testDate;
        if (dataObject[NonAgywPrepVisitConstant.dateBled3] != '' &&
            dataObject[NonAgywPrepVisitConstant.dateBled3] != null) {
          testDate = DateTime.parse(
              '${dataObject[NonAgywPrepVisitConstant.dateBled3]}');
        } else if (dataObject[NonAgywPrepVisitConstant.dateBled2] != '' &&
            dataObject[NonAgywPrepVisitConstant.dateBled2] != null) {
          testDate = DateTime.parse(
              '${dataObject[NonAgywPrepVisitConstant.dateBled2]}');
        } else if (dataObject[NonAgywPrepVisitConstant.dateBled1] != '' &&
            dataObject[NonAgywPrepVisitConstant.dateBled1] != null) {
          testDate = DateTime.parse(
              '${dataObject[NonAgywPrepVisitConstant.dateBled1]}');
        } else {
          hasTestDate = false;
        }

        if (hasTestDate) {
          String periodType = dataObject[NonAgywPrepVisitConstant
                  .prepTypeOfPeriodBetweenTestingAndResults] ??
              '';
          if (periodType == '') {
            String days =
                DateConversionUtil.getDaysBetweenTestingAndInformedResult(
                    testDate, resultDate);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults,
                days);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant
                    .prepTypeOfPeriodBetweenTestingAndResults,
                'days');
          } else if (periodType == 'minutes') {
            String minutes =
                DateConversionUtil.getMinutesBetweenTestingAndInformedResult(
                    testDate, resultDate);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults,
                minutes);
          } else if (periodType == 'hours') {
            String hours =
                DateConversionUtil.getHoursBetweenTestingAndInformedResult(
                    testDate, resultDate);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults,
                hours);
          } else if (periodType == 'days') {
            String days =
                DateConversionUtil.getDaysBetweenTestingAndInformedResult(
                    testDate, resultDate);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults,
                days);
          } else if (periodType == 'weeks') {
            String weeks =
                DateConversionUtil.getWeeksBetweenTestingAndInformedResult(
                    testDate, resultDate);
            assignInputFieldValue(
                context,
                NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults,
                weeks);
          }
        } else {
          assignInputFieldValue(context,
              NonAgywPrepVisitConstant.prepPeriodBetweenTestingAndResults, '0');
          assignInputFieldValue(
              context,
              NonAgywPrepVisitConstant.prepTypeOfPeriodBetweenTestingAndResults,
              'days');
        }
      }
    }
    for (String sectionId in hiddenSections.keys) {
      List<FormSection> allFormSections =
          FormUtil.getFlattenFormSections(formSections);
      List<String> hidddenSectionInputFieldIds = FormUtil.getFormFieldIds(
          allFormSections
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
    Provider.of<EnrollmentFormState>(context, listen: false)
        .setHiddenFields(hiddenFields);
  }

  static resetValuesForHiddenSections(
    BuildContext context,
    List<FormSection> formSections,
  ) {
    Provider.of<EnrollmentFormState>(context, listen: false)
        .setHiddenSections(hiddenSections);
  }

  static assignInputFieldValue(
    BuildContext context,
    String inputFieldId,
    String value,
  ) {
    Provider.of<EnrollmentFormState>(context, listen: false)
        .setFormFieldState(inputFieldId, value);
  }
}
