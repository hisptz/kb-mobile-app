import 'package:flutter/material.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/models/input_field.dart';

class AgywEnrollmentConcent {
  static List<FormSection> getFormSections() {
    return [
      FormSection(name: 'Consent', color: Color(0xFF258DCC), inputFields: [
        InputField(
            id: 'z2YcxWJ0g35',
            name: 'Would you allow me to talk to the AGYW in privacy',
            valueType: 'BOOLEAN',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF05131B)),
        InputField(
            id: 'fPtxDcL7A3X',
            name: 'Do you agree to participate in this assessment',
            valueType: 'BOOLEAN',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF05131B)),
      ]),
    ];
  }
}