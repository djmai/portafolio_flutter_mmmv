import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router_state.freezed.dart';

@freezed
class RouterState with _$RouterState {
  const factory RouterState.initial({required GoRouter router}) = _InitialState;
}
