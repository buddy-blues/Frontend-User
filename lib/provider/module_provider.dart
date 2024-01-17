import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ModuleProvider extends ChangeNotifier {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<DocumentSnapshot<Map<String, dynamic>>> _moduleClassification = [];
  List<DocumentSnapshot<Map<String, dynamic>>> _moduleData = [];

  List<DocumentSnapshot<Map<String, dynamic>>> get moduleData => _moduleData;
  List<DocumentSnapshot<Map<String, dynamic>>> get moduleClassification =>
      _moduleClassification;

  bool _loading = false;
  bool get loading => _loading;

  Future<void> getModuleClassification() async {
    try {
      _loading = true;
      notifyListeners();

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await firestore.collection("module_classification").get();
      _moduleClassification = querySnapshot.docs;
    } catch (error) {
      // ignore: avoid_print
      print("Error fetching data: $error");
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<void> getModuleByType(String type) async {
    try {
      _loading = true;
      notifyListeners();

      QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
          .collection("modules")
          .where("type", isEqualTo: type)
          .get();
      _moduleData = querySnapshot.docs;
    } catch (error) {
      // ignore: avoid_print
      print("Error fetching data: $error");
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
