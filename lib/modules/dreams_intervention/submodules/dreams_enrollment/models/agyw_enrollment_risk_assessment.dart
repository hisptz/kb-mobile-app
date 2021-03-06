import 'package:flutter/material.dart';
import 'package:kb_mobile_app/models/form_section.dart';
import 'package:kb_mobile_app/models/input_field.dart';
import 'package:kb_mobile_app/models/input_field_option.dart';

class AgywEnrollmentRiskAssessment {
  static List<String> getMandatoryField() {
    return [
      'WTZ7GLTrE8Q',
      'rSP9c21JsfC',
      'qZP982qpSPS',
      'VJiWumvINR6',

      //Risk assessment
      'fSQY2z3L0lp',
      'UzQ533pOnvt',
      'GwVHeyOqTv2',
      'T3i6bQ3tCaA',
      'q8qPtzanSTU',
      // 'ojCwZf1iHOE',
      'LNaNh7kvh4X',
      'wGFmu7DhNGV',
      'G1s75wng5DY',
      'fyIUCi5EUtp',
      'x9CWVcy9CZ2',
      'bkpG276xEk9',
      'afatGR9sy5Q',
      'yCmbCOTbH3R',
      'VomsiFza9mn',
      'Dclkscej6HW',
      'VsqV6prIfm9',
      'r0rKJA911ma',
      'S4yWgL2zp2I',
      'NhBs8uAiRPt',
      'fVJfCtBVjan',
      'IokYFEUtSuc',
      'lo645exmnYG',
      'DBFA8dHsErO',
      'MeKao21EPyi',
      'fVJfCtBVjan',
      'IokYFEUtSuc',
      'lo645exmnYG',
      'DBFA8dHsErO',
      'MeKao21EPyi',
      'rsi08hlOFm8',
      'yU4tNjFpQIq',
      'zsivYH5qkho',
      'rsi08hlOFm8',
      'yU4tNjFpQIq',
      'zsivYH5qkho',
      'qTZtbRWe1Hb',
      'TJ5KB6GfZX4',
      'OA1dR8a4UWu',
      'EQHcFozjbP0',
      'Z7PTcgqwCLu',
      'FuYyLjYxxkg',
      'ODBeRytTLHm',
      'OQS3C6pUiWH',
      'uBx2mRzZoRh',
      'aIJoCMWUqBs',
      'zowQOCZivv8',
    ];
  }

  static List<FormSection> getFormSections() {
    return [
      FormSection(
        name: 'Household Information',
        color: Color(0xFF258DCC),
        inputFields: [
          InputField(
              id: 'dxp3qM2TgUc',
              name: '1. Name of parent/caregiver',
              translatedName:
                  '1. Lebitso la motsoali/mohlokomeli',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'YQ9G0ww2cDN',
              name: '2. AGYW’s father given name',
              translatedName:
                  '2. Lebitso la ntate oa moroetsana/mosali ea mocha lilemong (AGYW)',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'auPInwvDZjF',
              name: '3. AGYW’s mother given name',
              translatedName:
                  '3. Lebitso la ’m’e oa moroetsana/mosali ea mocha lilemong',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'NrYoz8RewxV',
              name:
                  '4. If the AGYW comes from child headed family,Name of the Sister/Brother',
              translatedName:
                  '4. Haeba moroetsana/mosali ea mocha lilemong a tsoa lelapeng leo hloho ea lelapa e leng ngoana, fana ka lebitso la ngoana eo',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'pvjIijxEJGp',
              name:
                  '5. Phone number of parent/caregiver/heads of the family if available',
              translatedName:
                  '5. Nomoro ea fono ea motsoali/mohlokomeli/hloho ea lelapa',
              valueType: 'PHONE_NUMBER',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
        ],
      ),
      FormSection(
        name: 'Demographic Information',
        color: Color(0xFF258DCC),
        inputFields: [
          InputField(
              id: 'WTZ7GLTrE8Q',
              name: 'First Name',
              translatedName: 'Lebitso la pele',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 's1HaiT6OllL',
              name: 'Middle Name',
              translatedName: 'Lebitso le mahareng',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'rSP9c21JsfC',
              name: 'Surname',
              translatedName: 'Le Fane',
              valueType: 'TEXT',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
            id: 'qZP982qpSPS',
            name: 'Date of Birth',
            translatedName: 'Letsatsi la tsoalo',
            valueType: 'DATE',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF737373),
            maxAgeInYear: 24,
            numberOfMonth: 11,
            minAgeInYear: 9,
            hint: "Beneficiary's age should be from 9 - 24 years",
          ),
          InputField(
            id: 'ls9hlz2tyol',
            name: 'Age',
            translatedName: 'Lilemo',
            isReadOnly: true,
            valueType: 'NUMBER',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF737373),
          ),
          InputField(
            id: 'VJiWumvINR6',
            name: 'Sex',
            translatedName: 'Boleng',
            valueType: 'TEXT',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF737373),
            options: [
              InputFieldOption(code: 'Male', name: 'Male'),
              InputFieldOption(code: 'Female', name: 'Female'),
              InputFieldOption(
                  code: 'Transgender (male to female)',
                  name: 'Transgender (male to female)'),
              InputFieldOption(
                  code: 'Transgender (female to male)',
                  name: 'Transgender (female to male)'),
            ],
          ),
          InputField(
              id: 'tNdoR0jYr7R',
              name: 'Phone number of AGYW',
              translatedName:
                  'Nomoro ea fono ea moroetsana/mosali ea mocha lilemong (haeba e le teng)',
              valueType: 'PHONE_NUMBER',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
            id: 's1eRvsL2Ly4',
            name: 'Marital Status.',
            translatedName: 'Boemo ba lenyalo.',
            valueType: 'TEXT',
            inputColor: Color(0xFF258DCC),
            labelColor: Color(0xFF737373),
            options: [
              InputFieldOption(
                  code: 'Married',
                  name: 'Married',
                  translatedName: 'Ka hara lenyalo'),
              InputFieldOption(
                  code: 'Single',
                  name: 'Single',
                  translatedName: 'Haba nyalana'),
              InputFieldOption(
                  code: 'Widowed',
                  name: 'Widowed',
                  translatedName: 'Molekane o hlokahetse'),
              InputFieldOption(
                  code: 'Divorced/separated',
                  name: 'Divorced/separated',
                  translatedName: 'Tlhalano/Karohano'),
              InputFieldOption(
                  code: 'Cohabiting',
                  name: 'Cohabiting',
                  translatedName: 'Ho lula hammoho (le molekane)')
            ],
          ),
          InputField(
              id: '',
              name: 'Have you been a member of',
              valueType: 'CHECK_BOX',
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373),
              renderAsRadio: true,
              options: [
                InputFieldOption(
                    code: 'dH0hCyp67mE',
                    name: 'Parenting DREAMS intervention?'),
                InputFieldOption(
                    code: 'auHaVN3ynaC',
                    name:
                        'Social Assessts building (Go Girls/Orgac/Aflateen/Aflatoun/PTS DREAMS intervention?'),
                InputFieldOption(
                    code: 'EJIDVrxGMUB',
                    name: 'SILC (Socio- Economic) DREAMS intervention?'),
                InputFieldOption(
                    code: 'g5Vyffx2vQL',
                    name: 'Steeping Stone DREAMS intervention?'),
                InputFieldOption(
                    code: 'yNl9YGbd3ps',
                    name:
                        'Condom Promotion and Provision DREAMS intervention?'),
                InputFieldOption(
                    code: 'F7s1XFNiEEx',
                    name: 'Contraceptive Mix DREAMS intervention?'),
                InputFieldOption(
                    code: 'etOufdeoXVG',
                    name:
                        'HIV and Violence Prevention (LBSE) DREAMS intervention?'),
                InputFieldOption(
                    code: 'O6aTNTaFqHx', name: 'HTS DREAMS intervention?'),
                InputFieldOption(
                    code: 'Q0BCuDsN52v', name: 'PrEP DREAMS intervention?'),
                InputFieldOption(
                    code: 'Ve9tcZoPoQk',
                    name: 'Post-Violence Care DREAMS intervention?'),
                InputFieldOption(
                    code: 'IYhZVmA0ED1',
                    name: 'HIV Risk Assessment Messaging DREAMS intervention?'),
                InputFieldOption(
                    code: 'PdP87EJdp8D', name: 'VMMC DREAMS intervention?'),
                InputFieldOption(
                    code: 'uzfQwO4ypIP', name: 'ART DREAMS intervention?'),
              ])
        ],
      ),
      FormSection(
        name: 'Risk Assessment',
        color: Color(0xFF258DCC),
        inputFields: [],
        subSections: [
          FormSection(
            id: '1_E_H_S',
            name: '1. Ever had sex',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'fSQY2z3L0lp',
                  name: 'a. Have you ever had sex?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'UzQ533pOnvt',
                name:
                    'b. How old were you when you had sex for the first time?',
                translatedName:
                    'b. U ne u le lilemo tse kae ha u qala ho etsa thobalano?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(code: '9-14', name: '9-14'),
                  InputFieldOption(code: '15-19', name: '15-19'),
                  InputFieldOption(code: '20-24', name: '20-24'),
                ],
              ),
              InputField(
                  id: 'GwVHeyOqTv2',
                  name: 'c. Do you have any sexual partner?',
                  translatedName:
                      'c. Na ho na le motho eo u etsang thobalano le eena?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'T3i6bQ3tCaA',
                  name: 'd. Are you involved in any sexual activity?',
                  translatedName: 'd. Na u etsa thobalano?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'q8qPtzanSTU',
                  name:
                      'e. How many sexual partners have you had in the last 12 months?',
                  translatedName:
                      'e. U entse thobalano le batho ba bakae ka palo likhoeling tse 12 tse fetileng?',
                  valueType: 'NUMBER',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              // InputField(
              //     id: 'ojCwZf1iHOE',
              //     name: 'f. Do you have a current sexual partner?',
              //     translatedName:
              //         'f. Na u na le motho eo u etsang thobalano le eena nakong ea joale?',
              //     valueType: 'BOOLEAN',
              //     inputColor: Color(0xFF258DCC),
              //     labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '1_M_S_P',
            name: '1. Multiple sexual patners (in the last year)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'fSQY2z3L0lp',
                  name: 'a. Have you ever had sex?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'UzQ533pOnvt',
                name:
                    'b. How old were you when you had sex for the first time?',
                translatedName:
                    'b. U ne u le lilemo tse kae ha u qala ho etsa thobalano?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(code: '9-14', name: '9-14'),
                  InputFieldOption(code: '15-19', name: '15-19'),
                  InputFieldOption(code: '20-24', name: '20-24'),
                ],
              ),
              InputField(
                  id: 'GwVHeyOqTv2',
                  name: 'c. Do you have any sexual partner?',
                  translatedName:
                      'c. Na ho na le motho eo u etsang thobalano le eena?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'T3i6bQ3tCaA',
                  name: 'd. Are you involved in any sexual activity?',
                  translatedName: 'd. Na u etsa thobalano?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'q8qPtzanSTU',
                  name:
                      'e. How many sexual partners have you had in the last 12 months?',
                  translatedName:
                      'e. U entse thobalano le batho ba bakae ka palo likhoeling tse 12 tse fetileng?',
                  valueType: 'NUMBER',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              // InputField(
              //     id: 'ojCwZf1iHOE',
              //     name: 'f. Do you have a current sexual partner?',
              //     translatedName:
              //         'f. Na u na le motho eo u etsang thobalano le eena nakong ea joale?',
              //     valueType: 'BOOLEAN',
              //     inputColor: Color(0xFF258DCC),
              //     labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '2_H_O_P',
            name: '2. History of pregnancy',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'LNaNh7kvh4X',
                  name: 'a. Have you ever been or are you currently pregnant?',
                  translatedName:
                      'a. Na u kile oa ima nakong e fetileng kapa na u mokhachane nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'wGFmu7DhNGV',
                  name: 'b. Do you have any children?',
                  translatedName: 'b. Na u na le bana?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'G1s75wng5DY',
                  name: 'c. How many children do you have?',
                  translatedName: 'c. Bana ba hao ba bakae ka palo?',
                  valueType: 'NUMBER',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '3_STI',
            name: '3. STI (diagnosed or treated)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'fyIUCi5EUtp',
                  name: 'a. Have you ever been diagnosed with any STIs?',
                  translatedName:
                      'a. Na u kile oa fumanoa u e-na le tšoaetso ea mafu a likobo?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'x9CWVcy9CZ2',
                  name: 'b. Were they treated?',
                  translatedName:
                      'b. Haeba karabo e le “E”, na mafu ao a ile a alafuoa?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '4_N_O_I_C_U',
            name: '4. No or irregular condom use',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'bkpG276xEk9',
                  name: 'a. Do you use condoms regularly?',
                  translatedName: 'a. Na u sebelisa likhohlopo khafetsa?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'afatGR9sy5Q',
                  name: 'b. Do you know where to get condoms?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'yCmbCOTbH3R',
                  name:
                      'c. Did you use a condom during your last sexual activity?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'VomsiFza9mn',
                  name: 'd. Are you currently taking any contraceptives?',
                  translatedName:
                      'd. Na, nakong ea joale, u sebelisa lithibela-pelehi?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '4_E_O_S_V',
            name: '4. Experience of sexual violence (lifetime)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'Dclkscej6HW',
                  name:
                      'a. Have you ever experienced sexual violence (lifetime)?',
                  translatedName:
                      'a. Na u kile oa hlekefetsoa ka motabo bophelong ba hao?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'VsqV6prIfm9',
                  name:
                      'b. Did you ever have someone touch you on your private parts without your concern?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'r0rKJA911ma',
                  name: 'c. Did you ever have forced sex?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'S4yWgL2zp2I',
                  name:
                      'd. Did you ever have forced unprotected sex while you wanted protected sex?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '5_T_S',
            name:
                '5. Transactional sex (including staying in a relationship for material or financial support)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'NhBs8uAiRPt',
                  name:
                      'a. Do you engage in sexual activities in exchange for money or any material things (including staying in a relationship for material or financial support)?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '5_E_O_P_E_V',
            name:
                '5. Experience of physical or emotional violence (Currently or within the past twelve months)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'fVJfCtBVjan',
                  name:
                      'a. Experience of physical or emotional violence (within the last year)?',
                  translatedName:
                      'a. Na u kile oa hlekefetsoa ’meleng kapa maikutlong (selemong se fetileng)',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'IokYFEUtSuc',
                  name: 'b. Has your partner ever hit or hurt you in any way?',
                  translatedName:
                      'b. Na mohlankana/monna oa hao o kile a u otla kapa ho u utloisa bohloko maikutlong?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'lo645exmnYG',
                  name: 'c. Has your partner ever threatened to hurt you?',
                  translatedName:
                      'c. Na mohlankana/monna oa hao o kile a u tšosa ka hore o tla u ntša kotsi?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'DBFA8dHsErO',
                  name:
                      'd. Do you generally feel unsafe in your current relationship with your partner?',
                  translatedName:
                      'd. Na u ikutloa u sa sireletseha likamanong tsa hao le mohlankana/monna oa hao nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'MeKao21EPyi',
                  name:
                      'e. Do/did you feel afraid of your partner in any ways?',
                  translatedName:
                      'e. Na u utloa u e-na le tšabo kapa u kile oa utloa u e-na le tšabo ea mohlankana/monna oa hao?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373))
            ],
          ),
          FormSection(
            id: '6_E_O_S_V',
            name: '6. Experience of sexual violence (lifetime)',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'Dclkscej6HW',
                  name:
                      'a. Have you ever experienced sexual violence (lifetime)?',
                  translatedName:
                      'a. Na u kile oa hlekefetsoa ka motabo bophelong ba hao?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'fVJfCtBVjan',
                  name:
                      'b. Experience of physical or emotional violence (within the last year)?',
                  translatedName:
                      'b. Na u kile oa hlekefetsoa ’meleng kapa maikutlong (selemong se fetileng)',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'IokYFEUtSuc',
                  name: 'c. Has your partner ever hit or hurt you in any way?',
                  translatedName:
                      'c. Na mohlankana/monna oa hao o kile a u otla kapa ho u utloisa bohloko maikutlong?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'lo645exmnYG',
                  name: 'd. Has your partner ever threatened to hurt you?',
                  translatedName:
                      'd. Na mohlankana/monna oa hao o kile a u tšosa ka hore o tla u ntša kotsi?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'DBFA8dHsErO',
                  name:
                      'e. Do you generally feel unsafe in your current relationship with your partner?',
                  translatedName:
                      'e. Na u ikutloa u sa sireletseha likamanong tsa hao le mohlankana/monna oa hao nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'MeKao21EPyi',
                  name:
                      'f. Do/did you feel afraid of your partner in any ways?',
                  translatedName:
                      'f. Na u utloa u e-na le tšabo kapa u kile oa utloa u e-na le tšabo ea mohlankana/monna oa hao?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373))
            ],
          ),
          FormSection(
            id: '6_A_U',
            name: '6. Alcohol use',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'rsi08hlOFm8',
                  name: 'a. Have you ever or are you currently using alcohol?',
                  translatedName:
                      'a. Na u kile oa noa joala nakong e fetileng kapa u noa joala nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'yU4tNjFpQIq',
                  name:
                      'b. During the past three months, has your use of alcohol led to health, social, legal or financial problems?',
                  translatedName:
                      'b. Likhoeling tse 3 tse fetileng, na ho noa joala ho u baketse mathata bophelong, likamanong le batho ba bang, litlolong tsa molao, kapa cheleteng?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'zsivYH5qkho',
                  name:
                      'c. Do you ever forget things you did while using alcohol?',
                  translatedName:
                      'c. Na u ke u iphumane u sa hopole lintho tseo u li entseng nakong eo u neng u noele joala?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '7_A_U',
            name: '7. Alcohol use',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'rsi08hlOFm8',
                  name: 'a. Have you ever or are you currently using alcohol?',
                  translatedName:
                      'a. Na u kile oa noa joala nakong e fetileng kapa u noa joala nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'yU4tNjFpQIq',
                  name:
                      'b. During the past three months, has your use of alcohol led to health, social, legal or financial problems?',
                  translatedName:
                      'b. Likhoeling tse 3 tse fetileng, na ho noa joala ho u baketse mathata bophelong, likamanong le batho ba bang, litlolong tsa molao, kapa cheleteng?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'zsivYH5qkho',
                  name:
                      'c. Do you ever forget things you did while using alcohol?',
                  translatedName:
                      'c. Na u ke u iphumane u sa hopole lintho tseo u li entseng nakong eo u neng u noele joala?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '7_A_M',
            name: '7. Alcohol misuse',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'rsi08hlOFm8',
                  name: 'a. Have you ever or are you currently using alcohol?',
                  translatedName:
                      'a. Na u kile oa noa joala nakong e fetileng kapa u noa joala nakong ea joale?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'yU4tNjFpQIq',
                  name:
                      'b. During the past three months, has your use of alcohol led to health, social, legal or financial problems?',
                  translatedName:
                      'b. Likhoeling tse 3 tse fetileng, na ho noa joala ho u baketse mathata bophelong, likamanong le batho ba bang, litlolong tsa molao, kapa cheleteng?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'zsivYH5qkho',
                  name:
                      'c. Do you ever forget things you did while using alcohol?',
                  translatedName:
                      'c. Na u ke u iphumane u sa hopole lintho tseo u li entseng nakong eo u neng u noele joala?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '7_O_S',
            name: '7. Out of school',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'qTZtbRWe1Hb',
                  name:
                      'a. Are you currently enrolled in school or a vocation program?',
                  translatedName:
                      'a. Na u kena sekolo se tloaelehileng kapa sekolo sa mosebetsi oa matsoho?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'TJ5KB6GfZX4',
                name: 'b. Which one',
                translatedName: 'b. Haeba ho le joalo, sekolo seo ke sefe?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(
                      code: 'School',
                      name: 'School',
                      translatedName: 'Sekolo se tloaelehileng'),
                  InputFieldOption(
                      code: 'Vocational',
                      name: 'Vocational',
                      translatedName: 'ekolo sa mosebetsi oa matsoho ')
                ],
              ),
              InputField(
                  id: 'OA1dR8a4UWu',
                  name:
                      'c. Would you prefer re-enrolment in either school or vocational training?',
                  translatedName:
                      'c. Haeba u sa kene sekolo, u ka thabela ho kena sekolo se tloaelehileng kapa sekolo sa mosebetsi oa matsoho?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'EQHcFozjbP0',
                  name:
                      'd. Have you ever had to drop-out then been readmitted?',
                  translatedName:
                      'd. Haeba u kena sekolo, na u kile oa se tlohela ka lehare ’me oa amoheloa bocha?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '8_O_O_S',
            name: '8. Out of school',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'qTZtbRWe1Hb',
                  name:
                      'a. Are you currently enrolled in school or a vocation program?',
                  translatedName:
                      'a. Na u kena sekolo se tloaelehileng kapa sekolo sa mosebetsi oa matsoho?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'TJ5KB6GfZX4',
                name: 'b. Which one',
                translatedName: 'b. Haeba ho le joalo, sekolo seo ke sefe?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(
                      code: 'School',
                      name: 'School',
                      translatedName: 'Sekolo se tloaelehileng'),
                  InputFieldOption(
                      code: 'Vocational',
                      name: 'Vocational',
                      translatedName: 'ekolo sa mosebetsi oa matsoho ')
                ],
              ),
              InputField(
                  id: 'OA1dR8a4UWu',
                  name:
                      'c. Would you prefer re-enrolment in either school or vocational training?',
                  translatedName:
                      'c. Haeba u sa kene sekolo, u ka thabela ho kena sekolo se tloaelehileng kapa sekolo sa mosebetsi oa matsoho?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'EQHcFozjbP0',
                  name:
                      'd. Have you ever had to drop-out then been readmitted?',
                  translatedName:
                      'd. Haeba u kena sekolo, na u kile oa se tlohela ka lehare ’me oa amoheloa bocha?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '8_O_H',
            name: '8. Orphanhood',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'Z7PTcgqwCLu',
                  name: 'a. Are you an orphan?',
                  translatedName: 'a. Na u khutsana?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'FuYyLjYxxkg',
                name: 'b. Are you single or double orphan?',
                translatedName:
                    'b. Haeba ho le joalo, u shoeletsoe ke motsoali a le mong kapa batsoali ba babeli?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(
                      code: 'Single Orphan(Mother)',
                      name: 'Single Orphan(Mother Died)',
                      translatedName: 'Khutsana e le Mong (Mme)'),
                  InputFieldOption(
                      code: 'Single Orphan(Father)',
                      name: 'Single Orphan(Father Died)',
                      translatedName: 'Khutsana e le Mong (Ntate)'),
                  InputFieldOption(
                      code: 'Double Orphan',
                      name: 'Double Orphan (Father & Mother Died)',
                      translatedName: 'Likhutsana le le Mong (Ntate le Mme)'),
                ],
              ),
              InputField(
                  id: 'ODBeRytTLHm',
                  name: 'c. Are you living within a child-headed household?',
                  translatedName:
                      'c. Na u phela lelapeng leo hloho ea lelapa e leng ngoana?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'OQS3C6pUiWH',
                  name:
                      'd. In the past 6 months, has anyone in your household had consistent formal or informal Work that generated money for the household?',
                  translatedName:
                      'd. Likhoeling tse 6 tse fetileng, na ho na le e mong oa lelapa ea neng a hiriloe mosebetsing kapa a sebetsa e le moitšokoli?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'uBx2mRzZoRh',
                  name:
                      'e. In the past 4 weeks/30 days, was there ever no food to eat of any kind in your house because of lack of resources to get food?',
                  translatedName:
                      'e. Libekeng tse 4 tse fetileng/matsatsing a 30 a fetileng, na u kile oa hloka lijo hobane ho ne ho se mokhoa oa ho li reka?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'aIJoCMWUqBs',
                  name:
                      'f. In the past 4 weeks/30 days, did you or any household member go to sleep at night hungry because there was not enough food?',
                  translatedName:
                      'f. Libekeng tse 4 tse fetileng/matsatsing a 30 a fetileng, na uena kapa e mong oa lelapa o kile a robala a sa ja e le hobane lijo li haella?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'zowQOCZivv8',
                  name:
                      'g. In the past 4 weeks/30 days, did you or any household member go a whole day AND night without eating anything at all because there was not enough food?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
          FormSection(
            id: '9_O_H',
            name: '9. Orphanhood',
            color: Color(0xFF258DCC),
            inputFields: [
              InputField(
                  id: 'Z7PTcgqwCLu',
                  name: 'a. Are you an orphan?',
                  translatedName: 'a. Na u khutsana?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                id: 'FuYyLjYxxkg',
                name: 'b. Are you single or double orphan?',
                translatedName:
                    'b. Haeba ho le joalo, u shoeletsoe ke motsoali a le mong kapa batsoali ba babeli?',
                valueType: 'TEXT',
                inputColor: Color(0xFF258DCC),
                labelColor: Color(0xFF737373),
                options: [
                  InputFieldOption(
                      code: 'Single Orphan(Mother)',
                      name: 'Single Orphan(Mother Died)',
                      translatedName: 'Khutsana e le Mong (Mme)'),
                  InputFieldOption(
                      code: 'Single Orphan(Father)',
                      name: 'Single Orphan(Father Died)',
                      translatedName: 'Khutsana e le Mong (Ntate)'),
                  InputFieldOption(
                      code: 'Double Orphan',
                      name: 'Double Orphan (Father & Mother Died)',
                      translatedName: 'Likhutsana le le Mong (Ntate le Mme)'),
                ],
              ),
              InputField(
                  id: 'ODBeRytTLHm',
                  name: 'c. Are you living within a child-headed household?',
                  translatedName:
                      'c. Na u phela lelapeng leo hloho ea lelapa e leng ngoana?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'OQS3C6pUiWH',
                  name:
                      'd. In the past 6 months, has anyone in your household had consistent formal or informal Work that generated money for the household?',
                  translatedName:
                      'd. Likhoeling tse 6 tse fetileng, na ho na le e mong oa lelapa ea neng a hiriloe mosebetsing kapa a sebetsa e le moitšokoli?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'uBx2mRzZoRh',
                  name:
                      'e. In the past 4 weeks/30 days, was there ever no food to eat of any kind in your house because of lack of resources to get food?',
                  translatedName:
                      'e. Libekeng tse 4 tse fetileng/matsatsing a 30 a fetileng, na u kile oa hloka lijo hobane ho ne ho se mokhoa oa ho li reka?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'aIJoCMWUqBs',
                  name:
                      'f. In the past 4 weeks/30 days, did you or any household member go to sleep at night hungry because there was not enough food?',
                  translatedName:
                      'f. Libekeng tse 4 tse fetileng/matsatsing a 30 a fetileng, na uena kapa e mong oa lelapa o kile a robala a sa ja e le hobane lijo li haella?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
              InputField(
                  id: 'zowQOCZivv8',
                  name:
                      'g. In the past 4 weeks/30 days, did you or any household member go a whole day AND night without eating anything at all because there was not enough food?',
                  valueType: 'BOOLEAN',
                  inputColor: Color(0xFF258DCC),
                  labelColor: Color(0xFF737373)),
            ],
          ),
        ],
      ),
      FormSection(
        name: 'Enrollment Criteria',
        color: Color(0xFF258DCC),
        inputFields: [
          InputField(
              id: 'B4ojlzKypUF',
              name: 'Is Orphanhood (AGYW 10-17 Yrs)',
              valueType: 'TRUE_ONLY',
              isReadOnly: true,
              inputColor: Color(0xFF258DCC),
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'HJIHPjOf5s1',
              name: 'Alcohol Use',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'bApA6X6TVvJ',
              name: 'Out of school/Never schooled education/Enrollment',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'yc3BlUIEup3',
              name: 'Experience of violence',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'p33MrrhsQRz',
              name: 'Transactional Sex',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'iY67qYnywgS',
              name: 'No or Irregular Condom use',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'rh881j2vfvT',
              name: 'Sexually Transmitted Infection (STI) - (past or present)',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
          InputField(
              id: 'AZCVLPzD0Vd',
              name: 'High number of sex partners',
              valueType: 'TRUE_ONLY',
              inputColor: Color(0xFF258DCC),
              isReadOnly: true,
              labelColor: Color(0xFF737373)),
        ],
      ),
    ];
  }
}
