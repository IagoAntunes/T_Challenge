void main() {
  const double totalDistance = 125.0;
  const double carSpeed = 90.0;
  const double truckSpeed = 80.0;

  double totalTime = totalDistance / (carSpeed + truckSpeed);

  const double tollTime = 15.0 / 60.0;

  double totalCarTime = totalTime + tollTime;

  double carDistance = carSpeed * totalCarTime;
  double truckDistance = truckSpeed * totalTime;

  double remainingCarDistance = totalDistance - carDistance;
  double remainingTruckDistance = totalDistance - truckDistance;

  print('Car distance covered: ${carDistance.toStringAsFixed(2)} km');
  print('Truck distance covered: ${truckDistance.toStringAsFixed(2)} km');
  print(
      'Car distance to Ribeirão Preto: ${remainingCarDistance.toStringAsFixed(2)} km');
  print(
      'Truck distance to Ribeirão Preto: ${remainingTruckDistance.toStringAsFixed(2)} km');

  if (remainingCarDistance < remainingTruckDistance) {
    print('The car is nearer to Ribeirão Preto.');
  } else {
    print('The truck is nearer to Ribeirão Preto.');
  }
}
