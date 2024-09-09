/// This program calculates and prints the minimum and maximum daily revenue,
/// as well as the number of days with revenue above the average from a given list of daily revenues.
void main() {
  // List of daily revenues
  List<double> dailyRevenue = [
    200.0,
    0.0,
    300.0,
    0.0,
    150.0,
  ];

  // Initialize variables to store the minimum and maximum revenue
  double minRevenue = double.infinity;
  double maxRevenue = double.negativeInfinity;
  double totalRevenue = 0.0;
  int revenueDays = 0;

  // Iterate through the daily revenues to find the minimum, maximum, and total revenue
  for (double value in dailyRevenue) {
    if (value > 0.0) {
      if (value < minRevenue) {
        minRevenue = value;
      }
      if (value > maxRevenue) {
        maxRevenue = value;
      }
      totalRevenue += value;
      revenueDays++;
    }
  }

  // Calculate the average revenue
  double averageRevenue = totalRevenue / revenueDays;

  // Count the number of days with revenue above the average
  int daysAboveAverage = 0;
  for (double value in dailyRevenue) {
    if (value > averageRevenue) {
      daysAboveAverage++;
    }
  }

  // Print the results
  print('Minimum: $minRevenue');
  print('Maximum: $maxRevenue');
  print('Number of days with revenue above average: $daysAboveAverage');
}
