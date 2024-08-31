import 'package:shared_preferences/shared_preferences.dart';  // For SharedPreferences


class SharedPreferenceHelper{
  static String userIdkey="USERIDKEY";
  static String userNamekey="USERNAMEKEY";
  static String userEmailkey="USEREMAILKEY";

  Future<bool> Saveuserid(String getuserId) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(userIdkey, getuserId);
  }
  Future<bool> Savenameid(String getuserName) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(userNamekey, getuserName);
  }
  Future<bool> Saveemailid(String getemailName) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(userEmailkey, getemailName);
  }
  Future<String?> Getuserid() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userIdkey);
  }
  Future<String?> Getuseremail() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userEmailkey);
  }
  Future<String?> Getusername() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userNamekey);
  }

}