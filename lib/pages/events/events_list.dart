import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nsg_controls/nsg_controls.dart';
import 'package:we_are_friends_app/app_pages.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';
import 'events_controller.dart';

class EventsListPage extends GetView<EventsController> {
  const EventsListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NsgListPage(
      type: NsgListPageMode.table,
      controller: controller,
      title: 'Список мероприятий',
      textNoItems: 'Добавьте мероприятие',
      elementEditPage: Routes.eventsPage,
      columns: [
        NsgTableColumn(
            name: EventGenerated.nameDate,
            presentation: 'Дата события',
            expanded: false,
            width: 100),
        NsgTableColumn(
            name: EventGenerated.nameDate,
            presentation: 'Группа',
            expanded: false,
            width: 150),
        NsgTableColumn(
            name: EventGenerated.nameDate,
            presentation: 'Мероприятие',
            expanded: true,
            width: 200),
        NsgTableColumn(
            name: EventGenerated.nameSumNeeded,
            presentation: 'Требуемая сумма',
            expanded: false,
            width: 100,
            totalSum: true),
        NsgTableColumn(
            name: EventGenerated.nameSumRaised,
            presentation: 'Собранная сумма',
            expanded: false,
            width: 100,
            totalSum: true),
      ],
      availableButtons: NsgTableMenuButtonType.allExceptSelected([
        NsgTableMenuButtonType.filterPeriod,
        NsgTableMenuButtonType.columnsSelect,
        NsgTableMenuButtonType.columnsSize,
        NsgTableMenuButtonType.favorites,
        NsgTableMenuButtonType.recent
      ]),
    );
  }
}
