import 'package:kb_mobile_app/core/offline_db/offline_db_provider.dart';
import 'package:kb_mobile_app/models/current_user.dart';
import 'package:sqflite/sqflite.dart';

class UserOuOfflineProvider extends OfflineDbProvider {
  // columns
  String id = 'id';
  String userId = 'userId';

  addOrUpdateUserOrganisationUnits(CurrentUser user) async {
    var dbClient = await db;
    for (id in user.userOrgUnitIds) {
      var data = Map<String, dynamic>();
      data['id'] = id;
      data['userId'] = user.id;
      await dbClient.insert(CurrentUser.userOrganisatonUnitTable, data,
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

  deleteUserOrganisationUnits(String userId) async {
    var dbClient = await db;
    return await dbClient.delete(CurrentUser.userOrganisatonUnitTable,
        where: '$id = ?', whereArgs: [userId]);
  }

  Future<List> getUserOrganisationUnits(String currentUserId) async {
    List userOrganisationUnits = [];
    try {
      var dbClient = await db;
      List<Map> maps =
          await dbClient.query(CurrentUser.userOrganisatonUnitTable, columns: [
        id,
        userId,
      ]);
      if (maps.isNotEmpty) {
        for (Map map in maps) {
          if (map['userId'] == currentUserId) {
            userOrganisationUnits.add(map['id']);
          }
        }
      }
    } catch (e) {}
    return userOrganisationUnits;
  }
}
