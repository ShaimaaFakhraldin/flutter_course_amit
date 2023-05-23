import '../db_helper/repository.dart';
import 'user_model.dart';

class UserServices {
  late Repository _repository ;
  UserServices(){
     _repository = Repository();
  }
  saveUser(UserModel userModel ) async{
    await  _repository.insertData("users", userModel.userMap());

  }

 Future< List<Map<String ,dynamic>>>  readAllUsers() async{
   return await _repository.readData("users"); ;
   }
}