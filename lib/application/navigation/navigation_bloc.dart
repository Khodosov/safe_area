import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_area/domain/models/app_tab.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState.initial()) {
    on<NavigationEvent>(
      (event, emit) {
        event.map(
          changeTab: (_ChangeTab value) {
            emit(state.copyWith(tab: value.tab));
          },
        );
      },
    );
  }
}
