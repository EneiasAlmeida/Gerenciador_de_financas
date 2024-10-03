// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistroStore on RegistroStoreBase, Store {
  Computed<ObservableList<Registro>>? _$registrosComputed;

  @override
  ObservableList<Registro> get registros => (_$registrosComputed ??=
          Computed<ObservableList<Registro>>(() => super.registros,
              name: '_RegistroStoreBase.registros')).value;

  late final _$_registrosAtom =
      Atom(name: '_RegistroStoreBase._registros', context: context);

  @override
  ObservableList<Registro> get _registros {
    _$_registrosAtom.reportRead();
    return super._registros;
  }

  @override
  set _registros(ObservableList<Registro> value) {
    _$_registrosAtom.reportWrite(value, super._registros, () {
      super._registros = value;
    });
  }

  late final _$_RegistroStoreBaseActionController =
      ActionController(name: '_RegistroStoreBase', context: context);

  @override
  void add(Registro registro) {
    final _$actionInfo = _$_RegistroStoreBaseActionController.startAction(
        name: '_RegistroStoreBase.add');
    try {
      return super.add(registro);
    } finally {
      _$_RegistroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void load(List<Registro> registros) {
    final _$actionInfo = _$_RegistroStoreBaseActionController.startAction(
        name: '_RegistroStoreBase.load');
    try {
      return super.load(registros);
    } finally {
      _$_RegistroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
registros: ${registros}
    ''';
  }
}
