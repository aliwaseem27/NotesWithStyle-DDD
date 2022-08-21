import 'package:flutter/foundation.dart';
import 'package:notes_with_style/domain/auth/auth_failure.dart';
import 'package:notes_with_style/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
