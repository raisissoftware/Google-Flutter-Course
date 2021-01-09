// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetMoviesTearOff {
  const _$GetMoviesTearOff();

// ignore: unused_element
  GetMoviesStart call() {
    return const GetMoviesStart();
  }

// ignore: unused_element
  GetMoviesSuccessful successful(List<Movie> movies) {
    return GetMoviesSuccessful(
      movies,
    );
  }

// ignore: unused_element
  GetMoviesError error(dynamic error) {
    return GetMoviesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMovies = _$GetMoviesTearOff();

/// @nodoc
mixin _$GetMovies {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMoviesStart value), {
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMoviesStart value), {
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetMoviesCopyWith<$Res> {
  factory $GetMoviesCopyWith(GetMovies value, $Res Function(GetMovies) then) = _$GetMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesCopyWithImpl<$Res> implements $GetMoviesCopyWith<$Res> {
  _$GetMoviesCopyWithImpl(this._value, this._then);

  final GetMovies _value;

  // ignore: unused_field
  final $Res Function(GetMovies) _then;
}

/// @nodoc
abstract class $GetMoviesStartCopyWith<$Res> {
  factory $GetMoviesStartCopyWith(GetMoviesStart value, $Res Function(GetMoviesStart) then) =
      _$GetMoviesStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesStartCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesStartCopyWith<$Res> {
  _$GetMoviesStartCopyWithImpl(GetMoviesStart _value, $Res Function(GetMoviesStart) _then)
      : super(_value, (v) => _then(v as GetMoviesStart));

  @override
  GetMoviesStart get _value => super._value as GetMoviesStart;
}

/// @nodoc
class _$GetMoviesStart implements GetMoviesStart {
  const _$GetMoviesStart();

  @override
  String toString() {
    return 'GetMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMoviesStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMoviesStart value), {
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMoviesStart value), {
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMoviesStart implements GetMovies {
  const factory GetMoviesStart() = _$GetMoviesStart;
}

/// @nodoc
abstract class $GetMoviesSuccessfulCopyWith<$Res> {
  factory $GetMoviesSuccessfulCopyWith(GetMoviesSuccessful value, $Res Function(GetMoviesSuccessful) then) =
      _$GetMoviesSuccessfulCopyWithImpl<$Res>;

  $Res call({List<Movie> movies});
}

/// @nodoc
class _$GetMoviesSuccessfulCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesSuccessfulCopyWith<$Res> {
  _$GetMoviesSuccessfulCopyWithImpl(GetMoviesSuccessful _value, $Res Function(GetMoviesSuccessful) _then)
      : super(_value, (v) => _then(v as GetMoviesSuccessful));

  @override
  GetMoviesSuccessful get _value => super._value as GetMoviesSuccessful;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(GetMoviesSuccessful(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$GetMoviesSuccessful implements GetMoviesSuccessful {
  const _$GetMoviesSuccessful(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMovies.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesSuccessful &&
            (identical(other.movies, movies) || const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @override
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith =>
      _$GetMoviesSuccessfulCopyWithImpl<GetMoviesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMoviesStart value), {
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMoviesStart value), {
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMoviesSuccessful implements GetMovies {
  const factory GetMoviesSuccessful(List<Movie> movies) = _$GetMoviesSuccessful;

  List<Movie> get movies;

  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetMoviesErrorCopyWith<$Res> {
  factory $GetMoviesErrorCopyWith(GetMoviesError value, $Res Function(GetMoviesError) then) =
      _$GetMoviesErrorCopyWithImpl<$Res>;

  $Res call({dynamic error});
}

/// @nodoc
class _$GetMoviesErrorCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesErrorCopyWith<$Res> {
  _$GetMoviesErrorCopyWithImpl(GetMoviesError _value, $Res Function(GetMoviesError) _then)
      : super(_value, (v) => _then(v as GetMoviesError));

  @override
  GetMoviesError get _value => super._value as GetMoviesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetMoviesError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetMoviesError implements GetMoviesError {
  const _$GetMoviesError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetMovies.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith =>
      _$GetMoviesErrorCopyWithImpl<GetMoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMoviesStart value), {
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMoviesStart value), {
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMoviesError implements GetMovies {
  const factory GetMoviesError(dynamic error) = _$GetMoviesError;

  dynamic get error;

  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith;
}

/// @nodoc
class _$SetSelectedMovieTearOff {
  const _$SetSelectedMovieTearOff();

// ignore: unused_element
  _SetSelectedMovie call(int movieId) {
    return _SetSelectedMovie(
      movieId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetSelectedMovie = _$SetSelectedMovieTearOff();

/// @nodoc
mixin _$SetSelectedMovie {
  int get movieId;

  $SetSelectedMovieCopyWith<SetSelectedMovie> get copyWith;
}

/// @nodoc
abstract class $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovieCopyWith(SetSelectedMovie value, $Res Function(SetSelectedMovie) then) =
      _$SetSelectedMovieCopyWithImpl<$Res>;

  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovieCopyWithImpl<$Res> implements $SetSelectedMovieCopyWith<$Res> {
  _$SetSelectedMovieCopyWithImpl(this._value, this._then);

  final SetSelectedMovie _value;

  // ignore: unused_field
  final $Res Function(SetSelectedMovie) _then;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
abstract class _$SetSelectedMovieCopyWith<$Res> implements $SetSelectedMovieCopyWith<$Res> {
  factory _$SetSelectedMovieCopyWith(_SetSelectedMovie value, $Res Function(_SetSelectedMovie) then) =
      __$SetSelectedMovieCopyWithImpl<$Res>;

  @override
  $Res call({int movieId});
}

/// @nodoc
class __$SetSelectedMovieCopyWithImpl<$Res> extends _$SetSelectedMovieCopyWithImpl<$Res>
    implements _$SetSelectedMovieCopyWith<$Res> {
  __$SetSelectedMovieCopyWithImpl(_SetSelectedMovie _value, $Res Function(_SetSelectedMovie) _then)
      : super(_value, (v) => _then(v as _SetSelectedMovie));

  @override
  _SetSelectedMovie get _value => super._value as _SetSelectedMovie;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_SetSelectedMovie(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$_SetSelectedMovie implements _SetSelectedMovie {
  const _$_SetSelectedMovie(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'SetSelectedMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSelectedMovie &&
            (identical(other.movieId, movieId) || const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @override
  _$SetSelectedMovieCopyWith<_SetSelectedMovie> get copyWith =>
      __$SetSelectedMovieCopyWithImpl<_SetSelectedMovie>(this, _$identity);
}

abstract class _SetSelectedMovie implements SetSelectedMovie {
  const factory _SetSelectedMovie(int movieId) = _$_SetSelectedMovie;

  @override
  int get movieId;

  @override
  _$SetSelectedMovieCopyWith<_SetSelectedMovie> get copyWith;
}

/// @nodoc
class _$UpdateGenreTearOff {
  const _$UpdateGenreTearOff();

// ignore: unused_element
  _UpdateGenre call(String genre) {
    return _UpdateGenre(
      genre,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateGenre = _$UpdateGenreTearOff();

/// @nodoc
mixin _$UpdateGenre {
  String get genre;

  $UpdateGenreCopyWith<UpdateGenre> get copyWith;
}

/// @nodoc
abstract class $UpdateGenreCopyWith<$Res> {
  factory $UpdateGenreCopyWith(UpdateGenre value, $Res Function(UpdateGenre) then) = _$UpdateGenreCopyWithImpl<$Res>;

  $Res call({String genre});
}

/// @nodoc
class _$UpdateGenreCopyWithImpl<$Res> implements $UpdateGenreCopyWith<$Res> {
  _$UpdateGenreCopyWithImpl(this._value, this._then);

  final UpdateGenre _value;

  // ignore: unused_field
  final $Res Function(UpdateGenre) _then;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateGenreCopyWith<$Res> implements $UpdateGenreCopyWith<$Res> {
  factory _$UpdateGenreCopyWith(_UpdateGenre value, $Res Function(_UpdateGenre) then) =
      __$UpdateGenreCopyWithImpl<$Res>;

  @override
  $Res call({String genre});
}

/// @nodoc
class __$UpdateGenreCopyWithImpl<$Res> extends _$UpdateGenreCopyWithImpl<$Res> implements _$UpdateGenreCopyWith<$Res> {
  __$UpdateGenreCopyWithImpl(_UpdateGenre _value, $Res Function(_UpdateGenre) _then)
      : super(_value, (v) => _then(v as _UpdateGenre));

  @override
  _UpdateGenre get _value => super._value as _UpdateGenre;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(_UpdateGenre(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
class _$_UpdateGenre implements _UpdateGenre {
  const _$_UpdateGenre(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString() {
    return 'UpdateGenre(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGenre &&
            (identical(other.genre, genre) || const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  _$UpdateGenreCopyWith<_UpdateGenre> get copyWith => __$UpdateGenreCopyWithImpl<_UpdateGenre>(this, _$identity);
}

abstract class _UpdateGenre implements UpdateGenre {
  const factory _UpdateGenre(String genre) = _$_UpdateGenre;

  @override
  String get genre;

  @override
  _$UpdateGenreCopyWith<_UpdateGenre> get copyWith;
}

/// @nodoc
class _$UpdateOrderByTearOff {
  const _$UpdateOrderByTearOff();

// ignore: unused_element
  _UpdateOrderBy call(String orderBy) {
    return _UpdateOrderBy(
      orderBy,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateOrderBy = _$UpdateOrderByTearOff();

/// @nodoc
mixin _$UpdateOrderBy {
  String get orderBy;

  $UpdateOrderByCopyWith<UpdateOrderBy> get copyWith;
}

/// @nodoc
abstract class $UpdateOrderByCopyWith<$Res> {
  factory $UpdateOrderByCopyWith(UpdateOrderBy value, $Res Function(UpdateOrderBy) then) =
      _$UpdateOrderByCopyWithImpl<$Res>;

  $Res call({String orderBy});
}

/// @nodoc
class _$UpdateOrderByCopyWithImpl<$Res> implements $UpdateOrderByCopyWith<$Res> {
  _$UpdateOrderByCopyWithImpl(this._value, this._then);

  final UpdateOrderBy _value;

  // ignore: unused_field
  final $Res Function(UpdateOrderBy) _then;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateOrderByCopyWith<$Res> implements $UpdateOrderByCopyWith<$Res> {
  factory _$UpdateOrderByCopyWith(_UpdateOrderBy value, $Res Function(_UpdateOrderBy) then) =
      __$UpdateOrderByCopyWithImpl<$Res>;

  @override
  $Res call({String orderBy});
}

/// @nodoc
class __$UpdateOrderByCopyWithImpl<$Res> extends _$UpdateOrderByCopyWithImpl<$Res>
    implements _$UpdateOrderByCopyWith<$Res> {
  __$UpdateOrderByCopyWithImpl(_UpdateOrderBy _value, $Res Function(_UpdateOrderBy) _then)
      : super(_value, (v) => _then(v as _UpdateOrderBy));

  @override
  _UpdateOrderBy get _value => super._value as _UpdateOrderBy;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_UpdateOrderBy(
      orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
class _$_UpdateOrderBy implements _UpdateOrderBy {
  const _$_UpdateOrderBy(this.orderBy) : assert(orderBy != null);

  @override
  final String orderBy;

  @override
  String toString() {
    return 'UpdateOrderBy(orderBy: $orderBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderBy &&
            (identical(other.orderBy, orderBy) || const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderBy);

  @override
  _$UpdateOrderByCopyWith<_UpdateOrderBy> get copyWith =>
      __$UpdateOrderByCopyWithImpl<_UpdateOrderBy>(this, _$identity);
}

abstract class _UpdateOrderBy implements UpdateOrderBy {
  const factory _UpdateOrderBy(String orderBy) = _$_UpdateOrderBy;

  @override
  String get orderBy;

  @override
  _$UpdateOrderByCopyWith<_UpdateOrderBy> get copyWith;
}

/// @nodoc
class _$UpdateQualityTearOff {
  const _$UpdateQualityTearOff();

// ignore: unused_element
  _UpdateQuality call(String quality) {
    return _UpdateQuality(
      quality,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQuality = _$UpdateQualityTearOff();

/// @nodoc
mixin _$UpdateQuality {
  String get quality;

  $UpdateQualityCopyWith<UpdateQuality> get copyWith;
}

/// @nodoc
abstract class $UpdateQualityCopyWith<$Res> {
  factory $UpdateQualityCopyWith(UpdateQuality value, $Res Function(UpdateQuality) then) =
      _$UpdateQualityCopyWithImpl<$Res>;

  $Res call({String quality});
}

/// @nodoc
class _$UpdateQualityCopyWithImpl<$Res> implements $UpdateQualityCopyWith<$Res> {
  _$UpdateQualityCopyWithImpl(this._value, this._then);

  final UpdateQuality _value;

  // ignore: unused_field
  final $Res Function(UpdateQuality) _then;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQualityCopyWith<$Res> implements $UpdateQualityCopyWith<$Res> {
  factory _$UpdateQualityCopyWith(_UpdateQuality value, $Res Function(_UpdateQuality) then) =
      __$UpdateQualityCopyWithImpl<$Res>;

  @override
  $Res call({String quality});
}

/// @nodoc
class __$UpdateQualityCopyWithImpl<$Res> extends _$UpdateQualityCopyWithImpl<$Res>
    implements _$UpdateQualityCopyWith<$Res> {
  __$UpdateQualityCopyWithImpl(_UpdateQuality _value, $Res Function(_UpdateQuality) _then)
      : super(_value, (v) => _then(v as _UpdateQuality));

  @override
  _UpdateQuality get _value => super._value as _UpdateQuality;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_UpdateQuality(
      quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
class _$_UpdateQuality implements _UpdateQuality {
  const _$_UpdateQuality(this.quality) : assert(quality != null);

  @override
  final String quality;

  @override
  String toString() {
    return 'UpdateQuality(quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQuality &&
            (identical(other.quality, quality) || const DeepCollectionEquality().equals(other.quality, quality)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(quality);

  @override
  _$UpdateQualityCopyWith<_UpdateQuality> get copyWith =>
      __$UpdateQualityCopyWithImpl<_UpdateQuality>(this, _$identity);
}

abstract class _UpdateQuality implements UpdateQuality {
  const factory _UpdateQuality(String quality) = _$_UpdateQuality;

  @override
  String get quality;

  @override
  _$UpdateQualityCopyWith<_UpdateQuality> get copyWith;
}
