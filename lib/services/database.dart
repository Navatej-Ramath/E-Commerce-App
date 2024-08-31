import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethords {
  Future addUserDetails(Map<String, dynamic> userinfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .set(userinfoMap);
  }
}
