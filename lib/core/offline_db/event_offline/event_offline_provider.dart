import 'package:kb_mobile_app/core/offline_db/event_offline/event_offline_data_value.dart';
import 'package:kb_mobile_app/core/offline_db/offline_db_provider.dart';
import 'package:kb_mobile_app/models/events.dart';
import 'package:sqflite/sqflite.dart';

class EventOfflineProvider extends OfflineDbProvider {
  final String table = 'events';
  //columns
  final String id = 'id';
  final String event = 'event';
  final String eventDate = 'eventDate';
  final String program = 'program';
  final String programStage = 'programStage';
  final String trackedEntityInstance = 'trackedEntityInstance';
  final String status = 'status';
  final String orgUnit = 'orgUnit';
  final String syncStatus = 'syncStatus';

  addOrUpdateEvent(Events event) async {
    var dbClient = await db;
    Map data = Events().toOffline(event);
    data['id'] = data['event'];
    data.remove('dataValues');
    await dbClient.insert(table, data,
        conflictAlgorithm: ConflictAlgorithm.replace);
    await EventOfflineDataValueProvider().addOrUpdateEventDataValues(event);
  }
}
