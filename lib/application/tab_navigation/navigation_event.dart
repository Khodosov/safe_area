part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {

  const factory NavigationEvent.changeTab({required AppTab tab}) = _ChangeTab;

}