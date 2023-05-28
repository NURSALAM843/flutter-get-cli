import 'package:get/get.dart';
import 'package:tes_cli/app/data/models/user_model.dart';
import 'package:tes_cli/app/data/providers/user_provider.dart';

class UserController extends GetxController {
  UserProvider userProv = UserProvider();

  Future<User?> getSingleUser(int id) async {
    return await userProv.getUser(id);
  }

  Future<List<User>> getAllUsers() async {
    return await userProv.getAllUsers();
  }
}
