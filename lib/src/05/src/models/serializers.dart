library serializers;

import 'package:COURSES/src/05/src/models/movie.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Movie,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();

// void main() {
//   final Movie movie = Movie();
//
//   movie
//     ..title
//     ..runtime
//     ..year;
//
//   movie.title;
//   movie.runtime;
//   movie.year;
// }
