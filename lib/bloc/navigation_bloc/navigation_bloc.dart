import 'package:bloc/bloc.dart';
import 'package:digitalkhachad/ui-pages/history.dart';
import 'package:digitalkhachad/ui-pages/logot.dart';
import 'package:digitalkhachad/ui-pages/my_cards_page.dart';
import 'package:digitalkhachad/ui-pages/myrole.dart';
import 'package:digitalkhachad/ui-pages/notification.dart';
import 'package:digitalkhachad/ui-pages/profile.dart';
import 'package:digitalkhachad/ui-pages/setting.dart';


enum NavigationEvents {
  DashboardClickedEvent,
  profileClickedEvent,
  myrideClickedEvent,
  historyClickedEvent,
  notificationClickedEvent,
  settingClickedEvent,
  logoutClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => MyCardsPage(
    onMenuTap: onMenuTap,
  );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield MyCardsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.profileClickedEvent:
        yield profile(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.myrideClickedEvent:
        yield myrole(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.historyClickedEvent:
        yield history(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.notificationClickedEvent:
        yield notification(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.settingClickedEvent:
        yield setting(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.logoutClickedEvent:
        yield logout(
          onMenuTap: onMenuTap,
        );

    }
  }
}