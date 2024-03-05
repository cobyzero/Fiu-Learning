import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterEventAcceptPolicy>((event, emit) {
      emit(
        RegisterState(privacePolicy: !state.privacePolicy),
      );
    });
  }
}
