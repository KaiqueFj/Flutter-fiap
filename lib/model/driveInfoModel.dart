class DriverInfoModel {
  String firstName;
  String lastName;
  String phoneNumber;
  double rating;

  // Default constructor
  DriverInfoModel({
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.rating = 0.0,
  });

  // Named constructor for creating an instance from a map (useful for JSON serialization)
  DriverInfoModel.fromMap(Map<String, dynamic> map)
      : firstName = map['firstName'] ?? '',
        lastName = map['lastName'] ?? '',
        phoneNumber = map['phoneNumber'] ?? '',
        rating = map['rating']?.toDouble() ?? 0.0;

  // Method to convert the instance to a map (useful for JSON serialization)
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'rating': rating,
    };
  }

  @override
  String toString() {
    return 'DriverInfoModel(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, rating: $rating)';
  }
}
