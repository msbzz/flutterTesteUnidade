// Mocks generated by Mockito 5.3.0 from annotations
// in estilizacao_componentes/data/bank_http.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:alura_bank/data/bank_http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [BankHttp].
///
/// See the documentation for Mockito's code generation for more information.
class MockBankHttp extends _i1.Mock implements _i2.BankHttp {
  MockBankHttp() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String> dolarToReal() =>
      (super.noSuchMethod(Invocation.method(#dolarToReal, []),
          returnValue: _i3.Future<String>.value('')) as _i3.Future<String>);
}
