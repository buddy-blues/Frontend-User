import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ModuleProvider extends ChangeNotifier{
   FirebaseFirestore firestore = FirebaseFirestore.instance;

  //  Stream<QuerySnapshot<Map<String, dynamic>>> getModuleClassification() {
  //   return firestore.collection("module_classification").snapshots();
  // }

  List<DocumentSnapshot<Map<String, dynamic>>> _moduleData = [];

  List<DocumentSnapshot<Map<String, dynamic>>> get moduleData => _moduleData;

  // Future<void> getModuleClassification() async {
  //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
  //       await firestore.collection("module_classification").get();
  //   _moduleData = querySnapshot.docs;
  //   notifyListeners();
  // }

  bool _loading = false;
  bool get loading => _loading;

  Future<void> getModuleClassification() async {
    try {
      _loading = true;
      notifyListeners();

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await firestore.collection("module_classification").get();
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