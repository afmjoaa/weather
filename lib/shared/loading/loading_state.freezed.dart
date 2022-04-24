// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingCompletedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function(String successMessage) loadingSuccessState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingCompletedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function(String successMessage)? loadingSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$InitialLoadingState implements InitialLoadingState {
  const _$InitialLoadingState();

  @override
  String toString() {
    return 'LoadingState.initialLoadingState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingCompletedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function(String successMessage) loadingSuccessState,
  }) {
    return initialLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingCompletedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function(String successMessage)? loadingSuccessState,
    required TResult orElse(),
  }) {
    if (initialLoadingState != null) {
      return initialLoadingState();
    }
    return orElse();
  }
}

abstract class InitialLoadingState implements LoadingState {
  const factory InitialLoadingState() = _$InitialLoadingState;
}

/// @nodoc

class _$LoadingCompletedState implements LoadingCompletedState {
  const _$LoadingCompletedState();

  @override
  String toString() {
    return 'LoadingState.loadingCompletedState()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingCompletedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function(String successMessage) loadingSuccessState,
  }) {
    return loadingCompletedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingCompletedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function(String successMessage)? loadingSuccessState,
    required TResult orElse(),
  }) {
    if (loadingCompletedState != null) {
      return loadingCompletedState();
    }
    return orElse();
  }
}

abstract class LoadingCompletedState implements LoadingState {
  const factory LoadingCompletedState() = _$LoadingCompletedState;
}

/// @nodoc

class _$LoadingFailedState implements LoadingFailedState {
  const _$LoadingFailedState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoadingState.loadingFailedState(errorMessage: $errorMessage)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingCompletedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function(String successMessage) loadingSuccessState,
  }) {
    return loadingFailedState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingCompletedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function(String successMessage)? loadingSuccessState,
    required TResult orElse(),
  }) {
    if (loadingFailedState != null) {
      return loadingFailedState(errorMessage);
    }
    return orElse();
  }
}

abstract class LoadingFailedState implements LoadingState {
  const factory LoadingFailedState(final String errorMessage) =
      _$LoadingFailedState;

  String get errorMessage => throw _privateConstructorUsedError;
}

/// @nodoc

class _$LoadingSuccessState implements LoadingSuccessState {
  const _$LoadingSuccessState(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'LoadingState.loadingSuccessState(successMessage: $successMessage)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadingState,
    required TResult Function() loadingCompletedState,
    required TResult Function(String errorMessage) loadingFailedState,
    required TResult Function(String successMessage) loadingSuccessState,
  }) {
    return loadingSuccessState(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadingState,
    TResult Function()? loadingCompletedState,
    TResult Function(String errorMessage)? loadingFailedState,
    TResult Function(String successMessage)? loadingSuccessState,
    required TResult orElse(),
  }) {
    if (loadingSuccessState != null) {
      return loadingSuccessState(successMessage);
    }
    return orElse();
  }
}

abstract class LoadingSuccessState implements LoadingState {
  const factory LoadingSuccessState(final String successMessage) =
      _$LoadingSuccessState;

  String get successMessage => throw _privateConstructorUsedError;
}
