import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archi_hive/core/error/failures.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/entities/trip.dart';

abstract class TripRepository {
  Future<Either<Failure, List<Trip>>> getTrips();
  Future<void> addTrip(Trip trip);
  Future<void> deleteTrip(int index);
}
