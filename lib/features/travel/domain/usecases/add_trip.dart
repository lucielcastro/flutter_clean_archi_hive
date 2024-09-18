import 'package:flutter_clean_archi_hive/features/travel/domain/entities/trip.dart';
import 'package:flutter_clean_archi_hive/features/travel/domain/repositories/trip_repository.dart';

class AddTrip {
  final TripRepository repository;

  AddTrip(this.repository);

  Future<void> call(Trip trip){
    return repository.addTrip(trip);
  }
}