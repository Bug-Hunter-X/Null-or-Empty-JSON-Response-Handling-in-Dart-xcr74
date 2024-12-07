```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final responseBody = response.body;
      if (responseBody != null && responseBody.isNotEmpty) {
        final jsonData = jsonDecode(responseBody);
        // ... use jsonData ...
      } else {
        print('Received null or empty JSON response.');
        // Handle the empty response appropriately, e.g., show a message or use default data
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle exceptions appropriately, e.g., retry the request or use default data
  }
}
```