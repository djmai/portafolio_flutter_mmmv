import 'package:portafolio_flutter_mmmv/src/features/register/data/sources/sources.dart';
import 'package:portafolio_flutter_mmmv/src/features/register/domain/repositories/repositories.dart';

class RegisterRepositoryImp implements RegisterRepository {
  RegisterRepositoryImp({required this.remoteDataSource});

  final RegisterRemoteDataSource remoteDataSource;

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
