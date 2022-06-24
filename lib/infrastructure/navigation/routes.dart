class Routes {
  static Future<String> get initialRoute async {
    try {
      return home;
    } catch (err) {
      return login;
    }
  }

  static const home = '/home';
  static const login = '/login';
}
