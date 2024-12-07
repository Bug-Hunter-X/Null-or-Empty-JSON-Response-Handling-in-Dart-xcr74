# Null or Empty JSON Response Handling in Dart

This repository demonstrates a common error in Dart when handling API responses:  failure to gracefully handle null or empty JSON responses.  The `bug.dart` file contains code that can crash if the API returns a null body or an empty JSON object. The `bugSolution.dart` file provides a corrected version.