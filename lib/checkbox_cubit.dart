import 'package:bloc/bloc.dart';

part 'checkbox_state.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(CheckboxState(false));

  void isChecked(isChecked)=>emit(CheckboxState(isChecked));
}
