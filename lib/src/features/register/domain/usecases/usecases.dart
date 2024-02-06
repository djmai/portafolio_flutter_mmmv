import 'package:portafolio_flutter_mmmv/src/features/register/domain/repositories/repositories.dart';

class GetRegisterUseCase {
  GetRegisterUseCase({required this.repository});

  final RegisterRepository repository;

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
