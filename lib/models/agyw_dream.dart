import 'package:kb_mobile_app/core/constants/beneficiary_identification.dart';
import 'package:kb_mobile_app/core/utils/app_util.dart';
import 'package:kb_mobile_app/models/tracked_entity_instance.dart';

class AgywDream {
  String id;
  String firstname;
  String middlename;
  String surname;
  String age;
  String ageBand;
  String sex;
  String programStatus;
  String primaryUIC;
  String enrolledOrganisation;
  String location;
  String orgUnit;
  String createdDate;
  String searchableValue;
  String enrollment;
  String beneficiaryType;
  TrackeEntityInstance trackeEntityInstanceData;

  AgywDream(
      {this.id,
      this.firstname,
      this.middlename,
      this.surname,
      this.age,
      this.ageBand,
      this.primaryUIC,
      this.sex,
      this.programStatus,
      this.enrolledOrganisation,
      this.location,
      this.orgUnit,
      this.createdDate,
      this.enrollment,
      this.searchableValue,
      this.beneficiaryType,
      this.trackeEntityInstanceData});
  AgywDream fromTeiModel(
    TrackeEntityInstance trackeEntityInstance,
    String orgUnit,
    String location,
    String createdDate,
    String enrollment,
  ) {
    List keys = [
      'WTZ7GLTrE8Q',
      's1HaiT6OllL',
      'rSP9c21JsfC',
      'qZP982qpSPS',
      'PN92g65TkVI',
      'VJiWumvINR6',
      'klLkGxy328c',
      'vIX4GTSCX4P',
      'vkd6o91n1IC',
      BeneficiaryIdentification.primaryUIC
    ];
    Map data = Map();
    for (Map detailObj in trackeEntityInstance.attributes) {
      String attribute = detailObj['attribute'];
      if (attribute != null && keys.indexOf(attribute) > -1) {
        data[attribute] = '${detailObj['value']}'.trim() ?? '';
      }
    }
    int age = AppUtil.getAgeInYear(data['qZP982qpSPS']);
    return AgywDream(
      id: trackeEntityInstance.trackedEntityInstance,
      firstname: data['WTZ7GLTrE8Q'] ?? '',
      middlename: data['s1HaiT6OllL'] ?? '',
      surname: data['rSP9c21JsfC'] ?? '',
      age: age.toString(),
      ageBand: agywAgeBand(age) ?? '',
      primaryUIC: data[BeneficiaryIdentification.primaryUIC] ?? '',
      sex: data['VJiWumvINR6'] ?? data['vIX4GTSCX4P'] ?? '',
      beneficiaryType: data['vkd6o91n1IC'] ?? '',
      programStatus: data['PN92g65TkVI'] ?? '',
      orgUnit: orgUnit,
      location: location,
      createdDate: createdDate,
      enrollment: enrollment,
      enrolledOrganisation: data['klLkGxy328c'] ?? '',
      searchableValue:
          "${data['WTZ7GLTrE8Q'] ?? ''} ${data['s1HaiT6OllL'] ?? ''} ${data['rSP9c21JsfC'] ?? ''} $age ${agywAgeBand(age) ?? ''} ${data[BeneficiaryIdentification.beneficiaryId] ?? ''} ${data['VJiWumvINR6'] ?? ''} ${data['klLkGxy328c'] ?? ''} $location $createdDate"
              .toLowerCase(),
      trackeEntityInstanceData: trackeEntityInstance,
    );
  }

  String agywAgeBand(int age) {
    return (age > 8 && age < 15)
        ? '09-14'
        : (age > 14 && age < 20)
            ? '15-19'
            : (age > 19 && age < 25)
                ? '20-24'
                : '';
  }

  @override
  String toString() {
    return '$firstname $surname';
  }
}
