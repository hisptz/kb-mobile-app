import 'dart:convert';
import 'package:kb_mobile_app/core/offline_db/user_offline/user_offline_provider.dart';
import 'package:kb_mobile_app/core/services/http_service.dart';
import 'package:kb_mobile_app/core/services/preference_provider.dart';
import 'package:kb_mobile_app/models/current_user.dart';

class UserService {
  final String preferenceKey = 'currrent_user';

  Future<dynamic> login(String username, String password) async {
    var url = 'api/me.json?fields=*';
    HttpService http = new HttpService(username: username, password: password);

    var response = await http.httpGet(url);
    return response.statusCode == 200
        ? CurrentUser.fromJson(json.decode(response.body), username, password)
        : null;
  }

  Future logout() async {}

  Future<CurrentUser> getCurrentUser() async {
    String userId = await PreferenceProvider.getPreferenceValue(preferenceKey);
    List<CurrentUser> users = await UserOfflineProvider().getUsers();
    List<CurrentUser> filteredUsers =
        users.where((CurrentUser user) => user.id == userId).toList();
    return filteredUsers.length > 0 ? filteredUsers[0] : null;
  }

  setCurrentUser(CurrentUser user) async {
    await UserOfflineProvider().addOrUpdateUser(user);
    await PreferenceProvider.setPreferenceValue(preferenceKey, user.id);
  }
}
