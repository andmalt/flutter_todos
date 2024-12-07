// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int offset) load,
    required TResult Function(int limit) loadMore,
    required TResult Function(ToDoModel todo) update,
    required TResult Function(ToDoModel todo) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int offset)? load,
    TResult? Function(int limit)? loadMore,
    TResult? Function(ToDoModel todo)? update,
    TResult? Function(ToDoModel todo)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int offset)? load,
    TResult Function(int limit)? loadMore,
    TResult Function(ToDoModel todo)? update,
    TResult Function(ToDoModel todo)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadToDoEvent value) load,
    required TResult Function(LoadMoreToDoEvent value) loadMore,
    required TResult Function(UpdateToDoEvent value) update,
    required TResult Function(DeleteToDoEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadToDoEvent value)? load,
    TResult? Function(LoadMoreToDoEvent value)? loadMore,
    TResult? Function(UpdateToDoEvent value)? update,
    TResult? Function(DeleteToDoEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadToDoEvent value)? load,
    TResult Function(LoadMoreToDoEvent value)? loadMore,
    TResult Function(UpdateToDoEvent value)? update,
    TResult Function(DeleteToDoEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadToDoEventImplCopyWith<$Res> {
  factory _$$LoadToDoEventImplCopyWith(
          _$LoadToDoEventImpl value, $Res Function(_$LoadToDoEventImpl) then) =
      __$$LoadToDoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$LoadToDoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadToDoEventImpl>
    implements _$$LoadToDoEventImplCopyWith<$Res> {
  __$$LoadToDoEventImplCopyWithImpl(
      _$LoadToDoEventImpl _value, $Res Function(_$LoadToDoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$LoadToDoEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadToDoEventImpl implements LoadToDoEvent {
  const _$LoadToDoEventImpl({this.limit = 20, this.offset = 0});

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'TodoEvent.load(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadToDoEventImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadToDoEventImplCopyWith<_$LoadToDoEventImpl> get copyWith =>
      __$$LoadToDoEventImplCopyWithImpl<_$LoadToDoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int offset) load,
    required TResult Function(int limit) loadMore,
    required TResult Function(ToDoModel todo) update,
    required TResult Function(ToDoModel todo) delete,
  }) {
    return load(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int offset)? load,
    TResult? Function(int limit)? loadMore,
    TResult? Function(ToDoModel todo)? update,
    TResult? Function(ToDoModel todo)? delete,
  }) {
    return load?.call(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int offset)? load,
    TResult Function(int limit)? loadMore,
    TResult Function(ToDoModel todo)? update,
    TResult Function(ToDoModel todo)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadToDoEvent value) load,
    required TResult Function(LoadMoreToDoEvent value) loadMore,
    required TResult Function(UpdateToDoEvent value) update,
    required TResult Function(DeleteToDoEvent value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadToDoEvent value)? load,
    TResult? Function(LoadMoreToDoEvent value)? loadMore,
    TResult? Function(UpdateToDoEvent value)? update,
    TResult? Function(DeleteToDoEvent value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadToDoEvent value)? load,
    TResult Function(LoadMoreToDoEvent value)? loadMore,
    TResult Function(UpdateToDoEvent value)? update,
    TResult Function(DeleteToDoEvent value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadToDoEvent implements TodoEvent {
  const factory LoadToDoEvent({final int limit, final int offset}) =
      _$LoadToDoEventImpl;

  int get limit;
  int get offset;
  @JsonKey(ignore: true)
  _$$LoadToDoEventImplCopyWith<_$LoadToDoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreToDoEventImplCopyWith<$Res> {
  factory _$$LoadMoreToDoEventImplCopyWith(_$LoadMoreToDoEventImpl value,
          $Res Function(_$LoadMoreToDoEventImpl) then) =
      __$$LoadMoreToDoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadMoreToDoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadMoreToDoEventImpl>
    implements _$$LoadMoreToDoEventImplCopyWith<$Res> {
  __$$LoadMoreToDoEventImplCopyWithImpl(_$LoadMoreToDoEventImpl _value,
      $Res Function(_$LoadMoreToDoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadMoreToDoEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreToDoEventImpl implements LoadMoreToDoEvent {
  const _$LoadMoreToDoEventImpl({this.limit = 20});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'TodoEvent.loadMore(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreToDoEventImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreToDoEventImplCopyWith<_$LoadMoreToDoEventImpl> get copyWith =>
      __$$LoadMoreToDoEventImplCopyWithImpl<_$LoadMoreToDoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int offset) load,
    required TResult Function(int limit) loadMore,
    required TResult Function(ToDoModel todo) update,
    required TResult Function(ToDoModel todo) delete,
  }) {
    return loadMore(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int offset)? load,
    TResult? Function(int limit)? loadMore,
    TResult? Function(ToDoModel todo)? update,
    TResult? Function(ToDoModel todo)? delete,
  }) {
    return loadMore?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int offset)? load,
    TResult Function(int limit)? loadMore,
    TResult Function(ToDoModel todo)? update,
    TResult Function(ToDoModel todo)? delete,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadToDoEvent value) load,
    required TResult Function(LoadMoreToDoEvent value) loadMore,
    required TResult Function(UpdateToDoEvent value) update,
    required TResult Function(DeleteToDoEvent value) delete,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadToDoEvent value)? load,
    TResult? Function(LoadMoreToDoEvent value)? loadMore,
    TResult? Function(UpdateToDoEvent value)? update,
    TResult? Function(DeleteToDoEvent value)? delete,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadToDoEvent value)? load,
    TResult Function(LoadMoreToDoEvent value)? loadMore,
    TResult Function(UpdateToDoEvent value)? update,
    TResult Function(DeleteToDoEvent value)? delete,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreToDoEvent implements TodoEvent {
  const factory LoadMoreToDoEvent({final int limit}) = _$LoadMoreToDoEventImpl;

  int get limit;
  @JsonKey(ignore: true)
  _$$LoadMoreToDoEventImplCopyWith<_$LoadMoreToDoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateToDoEventImplCopyWith<$Res> {
  factory _$$UpdateToDoEventImplCopyWith(_$UpdateToDoEventImpl value,
          $Res Function(_$UpdateToDoEventImpl) then) =
      __$$UpdateToDoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ToDoModel todo});

  $ToDoModelCopyWith<$Res> get todo;
}

/// @nodoc
class __$$UpdateToDoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateToDoEventImpl>
    implements _$$UpdateToDoEventImplCopyWith<$Res> {
  __$$UpdateToDoEventImplCopyWithImpl(
      _$UpdateToDoEventImpl _value, $Res Function(_$UpdateToDoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$UpdateToDoEventImpl(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as ToDoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoModelCopyWith<$Res> get todo {
    return $ToDoModelCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$UpdateToDoEventImpl implements UpdateToDoEvent {
  const _$UpdateToDoEventImpl(this.todo);

  @override
  final ToDoModel todo;

  @override
  String toString() {
    return 'TodoEvent.update(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateToDoEventImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateToDoEventImplCopyWith<_$UpdateToDoEventImpl> get copyWith =>
      __$$UpdateToDoEventImplCopyWithImpl<_$UpdateToDoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int offset) load,
    required TResult Function(int limit) loadMore,
    required TResult Function(ToDoModel todo) update,
    required TResult Function(ToDoModel todo) delete,
  }) {
    return update(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int offset)? load,
    TResult? Function(int limit)? loadMore,
    TResult? Function(ToDoModel todo)? update,
    TResult? Function(ToDoModel todo)? delete,
  }) {
    return update?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int offset)? load,
    TResult Function(int limit)? loadMore,
    TResult Function(ToDoModel todo)? update,
    TResult Function(ToDoModel todo)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadToDoEvent value) load,
    required TResult Function(LoadMoreToDoEvent value) loadMore,
    required TResult Function(UpdateToDoEvent value) update,
    required TResult Function(DeleteToDoEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadToDoEvent value)? load,
    TResult? Function(LoadMoreToDoEvent value)? loadMore,
    TResult? Function(UpdateToDoEvent value)? update,
    TResult? Function(DeleteToDoEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadToDoEvent value)? load,
    TResult Function(LoadMoreToDoEvent value)? loadMore,
    TResult Function(UpdateToDoEvent value)? update,
    TResult Function(DeleteToDoEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateToDoEvent implements TodoEvent {
  const factory UpdateToDoEvent(final ToDoModel todo) = _$UpdateToDoEventImpl;

  ToDoModel get todo;
  @JsonKey(ignore: true)
  _$$UpdateToDoEventImplCopyWith<_$UpdateToDoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteToDoEventImplCopyWith<$Res> {
  factory _$$DeleteToDoEventImplCopyWith(_$DeleteToDoEventImpl value,
          $Res Function(_$DeleteToDoEventImpl) then) =
      __$$DeleteToDoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ToDoModel todo});

  $ToDoModelCopyWith<$Res> get todo;
}

/// @nodoc
class __$$DeleteToDoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteToDoEventImpl>
    implements _$$DeleteToDoEventImplCopyWith<$Res> {
  __$$DeleteToDoEventImplCopyWithImpl(
      _$DeleteToDoEventImpl _value, $Res Function(_$DeleteToDoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$DeleteToDoEventImpl(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as ToDoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoModelCopyWith<$Res> get todo {
    return $ToDoModelCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$DeleteToDoEventImpl implements DeleteToDoEvent {
  const _$DeleteToDoEventImpl(this.todo);

  @override
  final ToDoModel todo;

  @override
  String toString() {
    return 'TodoEvent.delete(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteToDoEventImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteToDoEventImplCopyWith<_$DeleteToDoEventImpl> get copyWith =>
      __$$DeleteToDoEventImplCopyWithImpl<_$DeleteToDoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int offset) load,
    required TResult Function(int limit) loadMore,
    required TResult Function(ToDoModel todo) update,
    required TResult Function(ToDoModel todo) delete,
  }) {
    return delete(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int offset)? load,
    TResult? Function(int limit)? loadMore,
    TResult? Function(ToDoModel todo)? update,
    TResult? Function(ToDoModel todo)? delete,
  }) {
    return delete?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int offset)? load,
    TResult Function(int limit)? loadMore,
    TResult Function(ToDoModel todo)? update,
    TResult Function(ToDoModel todo)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadToDoEvent value) load,
    required TResult Function(LoadMoreToDoEvent value) loadMore,
    required TResult Function(UpdateToDoEvent value) update,
    required TResult Function(DeleteToDoEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadToDoEvent value)? load,
    TResult? Function(LoadMoreToDoEvent value)? loadMore,
    TResult? Function(UpdateToDoEvent value)? update,
    TResult? Function(DeleteToDoEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadToDoEvent value)? load,
    TResult Function(LoadMoreToDoEvent value)? loadMore,
    TResult Function(UpdateToDoEvent value)? update,
    TResult Function(DeleteToDoEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteToDoEvent implements TodoEvent {
  const factory DeleteToDoEvent(final ToDoModel todo) = _$DeleteToDoEventImpl;

  ToDoModel get todo;
  @JsonKey(ignore: true)
  _$$DeleteToDoEventImplCopyWith<_$DeleteToDoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
