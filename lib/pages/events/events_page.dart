import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsg_controls/nsg_controls.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';
import 'package:we_are_friends_app/pages/events/events_group/events_group_controller.dart';

import '../../app_pages.dart';
import 'events_controller.dart';

class EventsPage extends GetView<EventsController> {
  EventsPage({Key? key}) : super(key: key);

  final _textTitle = 'Редактирование мероприятие'.toUpperCase();
  final _textTitleNew = 'Добавление мероприятия'.toUpperCase();

  @override
  Widget build(BuildContext context) {
    return BodyWrap(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: controller.obx((state) => Container(
            key: GlobalKey(),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                NsgAppBar(
                  text: controller.currentItem.isEmpty
                      ? _textTitleNew
                      : _textTitle,
                  icon: Icons.arrow_back_ios_new,
                  colorsInverted: true,
                  bottomCircular: true,
                  onPressed: () {
                    controller.itemPageCancel();
                  },
                  icon2: Icons.check,
                  onPressed2: () {
                    controller.itemPagePost();
                  },
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      NsgDatePicker(
                          initialTime: controller.currentItem.date,
                          onClose: (d) {
                            controller.currentItem.date = d;
                          }),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: EventGenerated.nameName,
                        label: 'Мероприятие',
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: EventGenerated.nameEventGroupId,
                        label: 'Группа',
                        selectionController: Get.put(EventGroupController()),
                        selectionForm: Routes.eventsGroupListPage,
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: EventGenerated.nameSumNeeded,
                        minLines: 3,
                        maxLines: 5,
                        label: 'Описание',
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: EventGenerated.nameSumNeeded,
                        label: 'Нужная сумма',
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: EventGenerated.nameSumRaised,
                        label: 'Собранная сумма',
                      ),
                      NsgTable(
                        controller: Get.find<EventsFriendTableController>(),
                        elementEditPageName: Routes.eventsPageRow,
                        columns: [
                          NsgTableColumn(
                              name: EventFriendTableGenerated.nameFriendId,
                              width: 200,
                              presentation: 'Друг'),
                          NsgTableColumn(
                              name: EventFriendTableGenerated.nameSumNeeded,
                              width: 200,
                              presentation: 'Требуется'),
                          NsgTableColumn(
                              name: EventFriendTableGenerated.nameSumAcquired,
                              width: 200,
                              presentation: 'Сдано')
                        ],
                      ),
                    ],
                  )),
                ))
              ],
            ),
          )),
    ));
  }
}
