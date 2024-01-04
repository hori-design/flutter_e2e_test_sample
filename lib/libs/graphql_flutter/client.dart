import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final client = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: HttpLink('http://localhost:9000'),
    cache: GraphQLCache(),
  ),
);
