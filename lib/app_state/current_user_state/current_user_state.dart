import 'package:flutter/foundation.dart';
import 'package:kb_mobile_app/core/services/organisation_unit_service.dart';
import 'package:kb_mobile_app/models/current_user.dart';
import 'package:kb_mobile_app/models/organisation_unit.dart';

class CurrentUserState with ChangeNotifier {
  // initiat state
  CurrentUser _currentUser;
  String _currentUserLocations;
  bool _isCloManager;
  bool _canManageDreams;
  bool _canManageOGAC;
  bool _canManageOvc;
  bool _canManageNoneAgyw;
  bool _canManageReferral;
  bool _canManageCLOReferral;
  bool _canManageHtsShortForm;
  bool _canManageHtsLongForm;
  bool _canManageHivReg;
  bool _canManageSrh;
  bool _canManagePrep;
  bool _canManageMSGHIV;
  bool _canManageArtRefill;
  bool _canManageAnc;
  bool _canManageCondom;
  bool _canManageContraceptives;
  bool _canManagePOSTGBV;
  bool _canManagePEP;
  bool _canManageServiceForm;

  // selectors
  CurrentUser get currentUser => _currentUser;
  String get currentUserLocations => _currentUserLocations ?? '';
  bool get canManageDreams => _canManageDreams ?? false;
  bool get canManageOGAC => _canManageOGAC ?? false;
  bool get canManageOvc => _canManageOvc ?? false;
  bool get canManageNoneAgyw => _canManageNoneAgyw ?? false;
  bool get canManageReferral => _canManageReferral ?? false;
  bool get canManageCLOReferral => _canManageCLOReferral ?? false;
  bool get canManageHtsShortForm => _canManageHtsShortForm ?? false;
  bool get canManageHtsLongForm => _canManageHtsLongForm ?? false;
  bool get canManageHivReg => _canManageHivReg ?? false;
  bool get canManageSrh => _canManageSrh ?? false;
  bool get canManagePrep => _canManagePrep ?? false;
  bool get canManageAnc => _canManageAnc ?? false;
  bool get canManageArtRefill => _canManageArtRefill ?? false;
  bool get canManageMSGHIV => _canManageMSGHIV ?? false;
  bool get canManageCondom => _canManageCondom ?? false;
  bool get canManageContraceptives => _canManageContraceptives ?? false;
  bool get canManagePOSTGBV => _canManagePOSTGBV ?? false;
  bool get canManagePEP => _canManagePEP ?? false;
  bool get canManageServiceForm => _canManageServiceForm ?? false;
  bool get isCloManager => _isCloManager ?? false;

  void updateUserAccessStatus(
    String implementingPartner,
    dynamic userAccessConfigurations,
  ) {
    var userAccesses = userAccessConfigurations[implementingPartner] ?? Map();
    try {
      _canManageDreams = userAccesses.containsKey('canManageDreams') &&
          userAccesses['canManageDreams'] == true;
      _canManageOGAC = userAccesses.containsKey('canManageOGAC') &&
          userAccesses['canManageOGAC'] == true;
      _canManageOvc = userAccesses.containsKey('canManageOvc') &&
          userAccesses['canManageOvc'] == true;
      _canManageNoneAgyw = userAccesses.containsKey('canManageNoneAgyw') &&
          userAccesses['canManageNoneAgyw'] == true;
      _canManageReferral = userAccesses.containsKey('canManageReferral') &&
          userAccesses['canManageReferral'] == true;
      _canManageCLOReferral =
          userAccesses.containsKey('canManageCLOReferral') &&
              userAccesses['canManageCLOReferral'] == true;
      _canManageHtsShortForm =
          userAccesses.containsKey('canManageHtsShortForm') &&
              userAccesses['canManageHtsShortForm'] == true;
      _canManageHtsLongForm =
          userAccesses.containsKey('canManageHtsLongForm') &&
              userAccesses['canManageHtsLongForm'] == true;
      _canManageHivReg = userAccesses.containsKey('canManageHivReg') &&
          userAccesses['canManageHivReg'] == true;
      _canManageSrh = userAccesses.containsKey('canManageSrh') &&
          userAccesses['canManageSrh'] == true;
      _canManagePrep = userAccesses.containsKey('canManagePrep') &&
          userAccesses['canManagePrep'] == true;
      _canManagePEP = userAccesses.containsKey('canManagePEP') &&
          userAccesses['canManagePEP'] == true;
      _canManageCondom = userAccesses.containsKey('canManageCondom') &&
          userAccesses['canManageCondom'] == true;
      _canManageContraceptives =
          userAccesses.containsKey('canManageContraceptives') &&
              userAccesses['canManageContraceptives'] == true;
      _canManageMSGHIV = userAccesses.containsKey('canManageMSGHIV') &&
          userAccesses['canManageMSGHIV'] == true;
      _canManageArtRefill = userAccesses.containsKey('canManageArtRefill') &&
          userAccesses['canManageArtRefill'] == true;
      _canManageAnc = userAccesses.containsKey('canManageAnc') &&
          userAccesses['canManageAnc'] == true;
      _canManageServiceForm =
          userAccesses.containsKey('canManageServiceForm') &&
              userAccesses['canManageServiceForm'] == true;
      _canManagePOSTGBV = userAccesses.containsKey('canManagePOSTGBV') &&
          userAccesses['canManagePOSTGBV'] == true;
    } catch (error) {
      print(error.toString());
    }
    notifyListeners();
  }

  //reducers
  void setCurrentUser(
    CurrentUser user,
    dynamic userAccessConfigurations,
  ) {
    _currentUser = user;
    String implementingPartner = user.implementingPartner;
    updateUserAccessStatus(
      implementingPartner,
      userAccessConfigurations,
    );
    setCurrentUserLocation();
  }

  void setCurrentUserLocation() async {
    String locations = '';
    if (_currentUser != null && _currentUser.userOrgUnitIds != null) {
      List<OrganisationUnit> organisationUnits = await OrganisationUnitService()
          .getOrganisationUnits(_currentUser.userOrgUnitIds);
      locations = organisationUnits
          .map((OrganisationUnit organisationUnit) =>
              organisationUnit.name ?? '')
          .toList()
          .join(', ');
    }
    _currentUserLocations = locations;
    notifyListeners();
  }
}
