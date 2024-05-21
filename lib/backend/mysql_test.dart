import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost',
      user = 'helixn',
      password = 'Haduken132',
      db = 'topicsGptFlutter';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        port: port, host: host, user: user, password: password);
    return await MySqlConnection.connect(settings, isUnixSocket: true);
  }
}
