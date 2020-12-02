import 'package:flutter/material.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/models/input_field.dart';
import 'package:kb_mobile_app/models/input_field_option.dart';

class OvcEnrollmentChild {
  static List<String> getMandatoryField() {
    return [
      'WTZ7GLTrE8Q',
      'rSP9c21JsfC',
      'qZP982qpSPS',
      'vIX4GTSCX4P',
      'iS9mAp3jDaU',
      'wmKqYZML8GA'
    ];
  }

  static List<FormSection> getFormSections() {
    return [
      FormSection(
          name: 'Child Information',
          description:
              'This tool should be applied to all children aged 0-17 years and 11 months old.',
          color: Color(0xFF1A3518),
          inputFields: [
            InputField(
              id: 'WTZ7GLTrE8Q',
              name: 'First Name',
              valueType: 'TEXT',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
            ),
            InputField(
              id: 's1HaiT6OllL',
              name: 'Middle Name',
              valueType: 'TEXT',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
            ),
            InputField(
              id: 'rSP9c21JsfC',
              name: 'Surname',
              valueType: 'TEXT',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
            ),
            InputField(
              id: 'qZP982qpSPS',
              name: 'Date of Birth',
              valueType: 'DATE',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
              maxAgeInYear: 17,
              minAgeInYear: 0,
              hint: "Beneficiary's age should be from 0 - 17 years",
            ),
            InputField(
              id: 'ls9hlz2tyol',
              name: 'Age',
              isReadOnly: true,
              valueType: 'NUMBER',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
            ),
            InputField(
                id: 'vIX4GTSCX4P',
                name: 'Sex',
                valueType: 'TEXT',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                renderAsRadio: true,
                options: [
                  InputFieldOption(code: 'Male', name: 'Male'),
                  InputFieldOption(code: 'Female', name: 'Female'),
                ]),
            InputField(
                id: 'RDobagXItZ6',
                name: 'Type of beneficiary',
                valueType: 'TEXT',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                renderAsRadio: true,
                options: [
                  InputFieldOption(code: 'New', name: 'New'),
                  InputFieldOption(code: 'Re-enrolled', name: 'Re-enrolled')
                ]),
            InputField(
                id: 'iS9mAp3jDaU',
                name: 'Relationship to Caregiver',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT',
                options: [
                  InputFieldOption(
                      code: 'Biological mother', name: 'Biological mother'),
                  InputFieldOption(
                      code: 'Biological father', name: 'Biological father'),
                  InputFieldOption(code: 'Aunt/Uncle', name: 'Aunt/Uncle'),
                  InputFieldOption(code: 'Sibling', name: 'Sibling'),
                  InputFieldOption(code: 'Grandparent', name: 'Grandparent'),
                ]),
            InputField(
                id: 'KO5NC4pfBmv',
                name: 'Is this a primary child?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
          ]),
      FormSection(
          name: 'Child Vulnerability',
          color: Color(0xFF1A3518),
          inputFields: [
            InputField(
                id: 'UeF4OvjIIEK',
                name: 'Is the child an orphan?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'nOgf8LKXS4k',
                name: 'Orphan status',
                valueType: 'TEXT',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(
                      code: 'Single Orphan(Mother)',
                      name: 'Single Orphan(Mother Died)'),
                  InputFieldOption(
                      code: 'Single Orphan(Father)',
                      name: 'Single Orphan(Father Died)'),
                  InputFieldOption(
                      code: 'Double Orphan',
                      name: 'Double Orphan (Father & Mother Died)'),
                ]),
            InputField(
                id: 'YR7Xxk14qoP',
                name: 'Is the child living with disabilities?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'YR7Xxk14qoP_checkbox',
                name: 'What type of disabilities?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'CHECK_BOX',
                options: [
                  InputFieldOption(
                      code: 'dufGxx0KVg0', name: 'acquired brain injury'),
                  InputFieldOption(
                      code: 'nfp9NHLf25K', name: 'autism spectrum disorder'),
                  InputFieldOption(
                      code: 'tbLVGG4zDrJ', name: 'deaf or hard hearing'),
                  InputFieldOption(
                      code: 'ULr0tYkjTTB', name: 'intellectual disability'),
                  InputFieldOption(
                      code: 'BfbiOanp9Pi', name: 'mental health conditions'),
                  InputFieldOption(
                      code: 'X3MQhmVA1Jt', name: 'physical disability'),
                  InputFieldOption(
                      code: 'TPRVr4ua9f9', name: 'vision impairment'),
                ]),
            InputField(
                id: 'wmKqYZML8GA',
                name: 'Child living with HIV ?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'ZKMhrjWoXnD',
                name: 'Child of people living with HIV (PLHIV)?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'GMcljM7jbNG',
                name: 'HIV exposed infants (HEI)?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'br1xvwAQ6el',
                name: 'Child of a sex worker(FSW)?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'Gkjp5XZD70V',
                name:
                    'Child exposed/experiencing violence and abuse (Survivors of Vac)?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
              id: 'Sa0KVprHUr7',
              name: 'When did the violence or abuse happen?',
              inputColor: Color(0xFF4B9F46),
              labelColor: Color(0xFF737373),
              valueType: 'TEXT',
              options: [
                InputFieldOption(
                    code: '0-3 months ago', name: '0-3 months ago'),
                InputFieldOption(
                    code: '4-6 months ago', name: '4-6 months ago'),
                InputFieldOption(
                    code: '7-12 months ago', name: '7-12 months ago'),
              ],
            ),
            InputField(
                id: 'wtrZQadTkOL',
                name: 'What type of violence /abuse did you experience?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT',
                options: [
                  InputFieldOption(code: 'Sexual', name: 'Sexual'),
                  InputFieldOption(
                      code: 'Economic/Neglect', name: 'Economic/Neglect'),
                  InputFieldOption(code: 'Physical', name: 'Physical'),
                  InputFieldOption(code: 'Emotional', name: 'Emotional'),
                ]),
            InputField(
                id: 'Mc3k3bSwXNe',
                name: 'Action taken?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'CePNVGSnj00',
                name: 'What type of action was taken?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT',
                options: [
                  InputFieldOption(
                      code: 'Health Facility', name: 'Health Facility'),
                  InputFieldOption(code: 'Police -CGPU', name: 'Police -CGPU'),
                  InputFieldOption(code: 'Chief', name: 'Chief'),
                  InputFieldOption(code: 'Councilor', name: 'Councilor'),
                  InputFieldOption(
                      code: 'Social Worker', name: 'Social Worker'),
                  InputFieldOption(code: 'Other', name: 'Other'),
                ]),
            InputField(
                id: 'GM2mJDlGZin',
                name: 'Specify other type of action taken',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT'),
            InputField(
                id: 'mTv9eZZq0Nz',
                name: 'Which is the primary vulnerability?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT',
                options: [
                  InputFieldOption(code: 'Orphan', name: 'Orphan'),
                  InputFieldOption(
                      code: 'Child living with disability',
                      name: 'Child living with disability'),
                  InputFieldOption(
                      code: 'Child living with HIV',
                      name: 'Child living with HIV'),
                  InputFieldOption(
                      code: 'Child of PLHIV', name: 'Child of PLHIV'),
                  InputFieldOption(
                      code: 'HIV exposed infants', name: 'HIV exposed infants'),
                  InputFieldOption(
                      code: 'Child of a sex worker (FSW)',
                      name: 'Child of a sex worker (FSW)'),
                  InputFieldOption(
                      code:
                          'Child exposed/experiencing violence and abuse (Survivors of Vac)',
                      name:
                          'Child exposed/experiencing violence and abuse (Survivors of Vac)'),
                ]),
            InputField(
                id: 'omUPOnb4JVp',
                name: 'Are there other vulnerabilities?',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'BOOLEAN'),
            InputField(
                id: 'WsmWkkFBiT6',
                name: 'Other vulnerability',
                inputColor: Color(0xFF4B9F46),
                labelColor: Color(0xFF737373),
                valueType: 'TEXT')
          ])
    ];
  }
}
