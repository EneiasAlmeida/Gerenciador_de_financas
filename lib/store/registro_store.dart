// ignore_for_file: prefer_final_fields

import 'package:mobx/mobx.dart';
import 'package:gerenciador/models/registro.dart';
part 'registro_store.g.dart';

class RegistroStore = RegistroStoreBase with _$RegistroStore;

abstract class RegistroStoreBase with Store {
  @observable
  ObservableList<Registro> _registros =
      List<Registro>.empty(growable: true).asObservable();

  @computed
  ObservableList<Registro> get registros => _registros;

  @action
  void add(Registro registro) {
    _registros.add(registro);
  }

  void remove(int id) {
    _registros.removeWhere(
      (e) => e.id == id,
    );
  }

  @action
  void load(List<Registro> registros) {
    _registros.addAll(registros);
  }
}
