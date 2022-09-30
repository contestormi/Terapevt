import 'package:mobx/mobx.dart';

part 'my_store.g.dart';

class MyStore = _MyStore with _$MyStore;

abstract class _MyStore with Store {
  @observable
  int total = 0;

  @observable
  int firstPageAnswer = 0;

  @observable
  int secondPageAnswer = 0;

  @action
  void addTenPoints(int selectedAnswer, int pageNumber) {
    if (pageNumber == 1) {
      firstPageAnswer = selectedAnswer;
      total += 10;
    } else {
      secondPageAnswer = selectedAnswer;
      total += 10;
    }
  }

  @action
  void minusTenPoints(int selectedAnswer, int pageNumber) {
    if (pageNumber == 1) {
      firstPageAnswer = selectedAnswer;
      total -= 10;
    } else {
      secondPageAnswer = selectedAnswer;
      total -= 10;
    }
  }
}
