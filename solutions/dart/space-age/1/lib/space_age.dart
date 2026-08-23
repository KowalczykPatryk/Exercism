class SpaceAge {
  double? age({required String planet, required int seconds})
  {
    double earthYears = seconds / 60.0 / 60.0 / 24.0 / 365.25;
    double result;
    switch(planet)
    {
      case "Earth":
        result = earthYears / 1.0;
      case "Mercury":
        result = earthYears / 0.2408467;
      case "Venus":
        result = earthYears / 0.61519726;
      case "Mars":
        result = earthYears / 1.8808158;
      case "Jupiter":
        result = earthYears / 11.862615;
      case "Saturn":
        result = earthYears / 29.447498;
      case "Uranus":
        result = earthYears / 84.016846;
      case "Neptune":
        result = earthYears / 164.79132;
      default:
        throw ArgumentError("Unknown planet: $planet");
    }
    return double.parse(result.toStringAsFixed(2));
  }
}
