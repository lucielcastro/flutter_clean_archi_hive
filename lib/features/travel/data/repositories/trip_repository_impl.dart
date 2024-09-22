import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archi_hive/core/error/failures.dart';
import 'package:flutter_clean_archi_hive/features/travel/data/datasources/trip_local_datasource.dart';
import 'package:flutter_clean_archi_hive/features/travel/data/model/trip_model.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/entities/trip.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository{
  final TripLocalDataSource localDataSource;

  TripRepositoryImpl(this.localDataSource);

  @override
  Future<void> addTrip(Trip trip) async {
    final tripModel = TripModel.fromEntity(trip);
    localDataSource.addTrip(tripModel);
  }

  @override
  Future<void> deleteTrip(int index) async {
    localDataSource.deleteTrip(index);
  }

  @override
  Future<Either<Failure, List<Trip>>> getTrips() async {
    try {
      final tripModels = localDataSource.getTrips();
      List<Trip> res = tripModels.map((model) => model.toEntity()).toList();
      return Right(res);
    } catch (error) {
      return Left(SomeSpecificError(error.toString()));
    }
  }

}