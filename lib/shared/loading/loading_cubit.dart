import 'package:bloc/bloc.dart';

import 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(const InitialLoadingState());
}


