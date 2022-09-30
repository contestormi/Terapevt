// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyStore on _MyStore, Store {
  late final _$totalAtom = Atom(name: '_MyStore.total', context: context);

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  late final _$firstPageAnswerAtom =
      Atom(name: '_MyStore.firstPageAnswer', context: context);

  @override
  int get firstPageAnswer {
    _$firstPageAnswerAtom.reportRead();
    return super.firstPageAnswer;
  }

  @override
  set firstPageAnswer(int value) {
    _$firstPageAnswerAtom.reportWrite(value, super.firstPageAnswer, () {
      super.firstPageAnswer = value;
    });
  }

  late final _$secondPageAnswerAtom =
      Atom(name: '_MyStore.secondPageAnswer', context: context);

  @override
  int get secondPageAnswer {
    _$secondPageAnswerAtom.reportRead();
    return super.secondPageAnswer;
  }

  @override
  set secondPageAnswer(int value) {
    _$secondPageAnswerAtom.reportWrite(value, super.secondPageAnswer, () {
      super.secondPageAnswer = value;
    });
  }

  late final _$_MyStoreActionController =
      ActionController(name: '_MyStore', context: context);

  @override
  void addTenPoints(int selectedAnswer, int pageNumber) {
    final _$actionInfo =
        _$_MyStoreActionController.startAction(name: '_MyStore.addTenPoints');
    try {
      return super.addTenPoints(selectedAnswer, pageNumber);
    } finally {
      _$_MyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void minusTenPoints(int selectedAnswer, int pageNumber) {
    final _$actionInfo =
        _$_MyStoreActionController.startAction(name: '_MyStore.minusTenPoints');
    try {
      return super.minusTenPoints(selectedAnswer, pageNumber);
    } finally {
      _$_MyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total},
firstPageAnswer: ${firstPageAnswer},
secondPageAnswer: ${secondPageAnswer}
    ''';
  }
}
