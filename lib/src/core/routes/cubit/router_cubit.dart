import 'package:bloc/bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portafolio_flutter_mmmv/src/core/routes/cubit/router_state.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit({
    required GoRouter routes,
  }) : super(RouterState.initial(router: routes));
}
