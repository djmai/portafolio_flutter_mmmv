import 'package:portafolio_flutter_mmmv/src/features/login/data/sources/sources.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/domain/repositories/repositories.dart';

class LoginRepositoryImp implements LoginRepository {
  LoginRepositoryImp({required this.remoteDataSource});

  final LoginRemoteDataSource remoteDataSource;

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
