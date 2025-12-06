class UserSession {
  static String? currentUsername;

  static void saveUsername(String username) {
    currentUsername = username;
  }

  static void clear() {
    currentUsername = null;
  }
}
