import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final client = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: HttpLink('http://localhost:9000'),
    cache: GraphQLCache(), // TODO(hori-design): 永続化(HIVE等)の検討
  ),
);
