```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      print('Data fetched successfully');
    } else {
      // Handle error here
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception here
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```