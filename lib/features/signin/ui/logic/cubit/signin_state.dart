
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_state.freezed.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loading() = Loading;
  const factory SigninState.success() = Success;
  const factory SigninState.error({required String error}) = Error;
}


