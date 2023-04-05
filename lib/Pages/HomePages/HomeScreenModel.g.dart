// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$collectionOfnamesAtom =
      Atom(name: '_HomeScreenModelBase.collectionOfnames', context: context);

  @override
  List<String> get collectionOfnames {
    _$collectionOfnamesAtom.reportRead();
    return super.collectionOfnames;
  }

  @override
  set collectionOfnames(List<String> value) {
    _$collectionOfnamesAtom.reportWrite(value, super.collectionOfnames, () {
      super.collectionOfnames = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setname({required List<String> myname}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setname');
    try {
      return super.setname(myname: myname);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionOfnames: ${collectionOfnames}
    ''';
  }
}
