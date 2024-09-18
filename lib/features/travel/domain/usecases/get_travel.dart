import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archi_hive/core/error/failures.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/entities/trip.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/repositories/trip_repository.dart';

class GetTrips {
  final TripRepository repository;

  GetTrips(this.repository);

  Future<Either<Failure, List<Trip>>> call() {
    return repository.getTrips();
  }
}
