import 'package:portafolio_flutter_mmmv/src/features/login/domain/repositories/repositories.dart';

class GetLoginUseCase {
  GetLoginUseCase({required this.repository});

  final LoginRepository repository;

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
