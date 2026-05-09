
part 'settings_state.dart';

/*

class SettingsCubit extends Cubit<SettingsState> {

  SettingsCubit() : super(SettingsInitial());

  void loadUsername()  {
    try {
      final username = prefs.getString("username") ?? "" ;
      emit(SettingsLoaded(username));
    } catch (e) {
      emit(SettingsError(e.toString()));
    }
  }

  Future<void> saveUsername(String username) async {
    try {
      await prefs.setString("username", username);
      loadUsername();
    } catch (e) {
      emit(SettingsError(e.toString()));
    }
  }

  Future<void> deleteUsername() async {
    try {
      await prefs.remove("username");
      loadUsername();
    } catch (e) {
      emit(SettingsError(e.toString()));
    }
  }
}

*/
