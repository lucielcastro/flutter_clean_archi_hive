import 'package:flutter_clean_archi_hive/features/travel/domain/repositories/trip_repository.dart';

class DeleteTrip {
  final TripRepository repository;

  DeleteTrip(this.repository);

  Future<void> call(int index){
    return repository.deleteTrip(index);
  }
}