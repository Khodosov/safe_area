part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required AppTab tab,
  }) = _NavigationState;

  factory NavigationState.initial() {
    return const NavigationState(
      tab: AppTab.tips,
    );
  }
}
