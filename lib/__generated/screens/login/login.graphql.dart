import '../../schema/type/authentication.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$LoginMutation {
  factory Variables$Mutation$LoginMutation({required Input$LoginInput input}) =>
      Variables$Mutation$LoginMutation._({
        r'input': input,
      });

  Variables$Mutation$LoginMutation._(this._$data);

  factory Variables$Mutation$LoginMutation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$LoginInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$LoginMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get input => (_$data['input'] as Input$LoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$LoginMutation<Variables$Mutation$LoginMutation>
      get copyWith => CopyWith$Variables$Mutation$LoginMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$LoginMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$LoginMutation<TRes> {
  factory CopyWith$Variables$Mutation$LoginMutation(
    Variables$Mutation$LoginMutation instance,
    TRes Function(Variables$Mutation$LoginMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$LoginMutation;

  factory CopyWith$Variables$Mutation$LoginMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LoginMutation;

  TRes call({Input$LoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$LoginMutation<TRes>
    implements CopyWith$Variables$Mutation$LoginMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$LoginMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LoginMutation _instance;

  final TRes Function(Variables$Mutation$LoginMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$LoginMutation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$LoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LoginMutation<TRes>
    implements CopyWith$Variables$Mutation$LoginMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LoginMutation(this._res);

  TRes _res;

  call({Input$LoginInput? input}) => _res;
}

class Mutation$LoginMutation {
  Mutation$LoginMutation({
    required this.login,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LoginMutation.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginMutation(
      login: Mutation$LoginMutation$login.fromJson(
          (l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LoginMutation$login login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$LoginMutation on Mutation$LoginMutation {
  CopyWith$Mutation$LoginMutation<Mutation$LoginMutation> get copyWith =>
      CopyWith$Mutation$LoginMutation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LoginMutation<TRes> {
  factory CopyWith$Mutation$LoginMutation(
    Mutation$LoginMutation instance,
    TRes Function(Mutation$LoginMutation) then,
  ) = _CopyWithImpl$Mutation$LoginMutation;

  factory CopyWith$Mutation$LoginMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginMutation;

  TRes call({
    Mutation$LoginMutation$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$LoginMutation$login<TRes> get login;
}

class _CopyWithImpl$Mutation$LoginMutation<TRes>
    implements CopyWith$Mutation$LoginMutation<TRes> {
  _CopyWithImpl$Mutation$LoginMutation(
    this._instance,
    this._then,
  );

  final Mutation$LoginMutation _instance;

  final TRes Function(Mutation$LoginMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginMutation(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as Mutation$LoginMutation$login),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$LoginMutation$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$LoginMutation$login(
        local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$LoginMutation<TRes>
    implements CopyWith$Mutation$LoginMutation<TRes> {
  _CopyWithStubImpl$Mutation$LoginMutation(this._res);

  TRes _res;

  call({
    Mutation$LoginMutation$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$LoginMutation$login<TRes> get login =>
      CopyWith$Mutation$LoginMutation$login.stub(_res);
}

const documentNodeMutationLoginMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LoginMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$LoginMutation _parserFn$Mutation$LoginMutation(
        Map<String, dynamic> data) =>
    Mutation$LoginMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$LoginMutation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$LoginMutation?,
);

class Options$Mutation$LoginMutation
    extends graphql.MutationOptions<Mutation$LoginMutation> {
  Options$Mutation$LoginMutation({
    String? operationName,
    required Variables$Mutation$LoginMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$LoginMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginMutation,
          parserFn: _parserFn$Mutation$LoginMutation,
        );

  final OnMutationCompleted$Mutation$LoginMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$LoginMutation
    extends graphql.WatchQueryOptions<Mutation$LoginMutation> {
  WatchOptions$Mutation$LoginMutation({
    String? operationName,
    required Variables$Mutation$LoginMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginMutation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationLoginMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$LoginMutation,
        );
}

extension ClientExtension$Mutation$LoginMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LoginMutation>> mutate$LoginMutation(
          Options$Mutation$LoginMutation options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$LoginMutation> watchMutation$LoginMutation(
          WatchOptions$Mutation$LoginMutation options) =>
      this.watchMutation(options);
}

class Mutation$LoginMutation$HookResult {
  Mutation$LoginMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$LoginMutation runMutation;

  final graphql.QueryResult<Mutation$LoginMutation> result;
}

Mutation$LoginMutation$HookResult useMutation$LoginMutation(
    [WidgetOptions$Mutation$LoginMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$LoginMutation());
  return Mutation$LoginMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LoginMutation> useWatchMutation$LoginMutation(
        WatchOptions$Mutation$LoginMutation options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LoginMutation
    extends graphql.MutationOptions<Mutation$LoginMutation> {
  WidgetOptions$Mutation$LoginMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$LoginMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginMutation,
          parserFn: _parserFn$Mutation$LoginMutation,
        );

  final OnMutationCompleted$Mutation$LoginMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$LoginMutation
    = graphql.MultiSourceResult<Mutation$LoginMutation> Function(
  Variables$Mutation$LoginMutation, {
  Object? optimisticResult,
  Mutation$LoginMutation? typedOptimisticResult,
});
typedef Builder$Mutation$LoginMutation = widgets.Widget Function(
  RunMutation$Mutation$LoginMutation,
  graphql.QueryResult<Mutation$LoginMutation>?,
);

class Mutation$LoginMutation$Widget
    extends graphql_flutter.Mutation<Mutation$LoginMutation> {
  Mutation$LoginMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LoginMutation? options,
    required Builder$Mutation$LoginMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$LoginMutation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$LoginMutation$login {
  Mutation$LoginMutation$login({
    required this.accessToken,
    this.refreshToken,
    this.$__typename = 'AuthToken',
  });

  factory Mutation$LoginMutation$login.fromJson(Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginMutation$login(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String? refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginMutation$login) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$LoginMutation$login
    on Mutation$LoginMutation$login {
  CopyWith$Mutation$LoginMutation$login<Mutation$LoginMutation$login>
      get copyWith => CopyWith$Mutation$LoginMutation$login(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LoginMutation$login<TRes> {
  factory CopyWith$Mutation$LoginMutation$login(
    Mutation$LoginMutation$login instance,
    TRes Function(Mutation$LoginMutation$login) then,
  ) = _CopyWithImpl$Mutation$LoginMutation$login;

  factory CopyWith$Mutation$LoginMutation$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginMutation$login;

  TRes call({
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LoginMutation$login<TRes>
    implements CopyWith$Mutation$LoginMutation$login<TRes> {
  _CopyWithImpl$Mutation$LoginMutation$login(
    this._instance,
    this._then,
  );

  final Mutation$LoginMutation$login _instance;

  final TRes Function(Mutation$LoginMutation$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginMutation$login(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined
            ? _instance.refreshToken
            : (refreshToken as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LoginMutation$login<TRes>
    implements CopyWith$Mutation$LoginMutation$login<TRes> {
  _CopyWithStubImpl$Mutation$LoginMutation$login(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  }) =>
      _res;
}
