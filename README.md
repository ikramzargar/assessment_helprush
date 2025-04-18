# assessement_helprush

Assessment from HelpRush.

## About
This Flutter app is an assessment from HelpRush demonstrating  the use of clean architecture, SOLID principles, 
and state management using the BLoC pattern. 
It fetches posts from a public API and displays them in a list with skeleton loading, 
error handling, and dynamic theme switching (light/dark).

## Installing
Download the release apk from https://drive.google.com/file/d/1JMrqmSfREbOcoNay_lL95MlPB6r-TgFP/view?usp=sharing.

## Demo
Watch demo video at https://drive.google.com/file/d/1pgagegm1PfCfrYym26Hzck7zkxJwcRDt/view?usp=sharing.

## Features
1.	Fetch Posts
•	Fetches posts from jsonplaceholder.typicode.com.
•	Displays a list of posts with title (bold) and body (subtext).
2.	State Management
•	State is managed using BLoC.
•	Handles three states:
•	Loading: Shows a skeleton loader.
•	Loaded: Displays the fetched posts.
•	Error: Handles error gracefully (e.g., no internet, server error).
3.	UI Enhancements
•	Skeleton Loader: A shimmer effect that shows while data is being fetched.
•	SnackBar: Displays post information on tap.
•	Pull-to-Refresh: Implemented with RefreshIndicator for a better user experience.
•	Dark/Light Themes: Supports system-wide dark and light theme switching.

## Packages Used
•	flutter_bloc: For state management using the BLoC pattern.
•	shimmer: For skeleton loader effect while posts are loading.
•	http: For fetching data from the API.
•	equatable: For value equality in BLoC states and events.

## Project Setup
1.	Clone this repository:
      git clone <repo-url>
      cd flutter-post-app

2. 	Install dependencies:
      flutter pub get

3.	Run the app on your device or emulator:
      flutter run

## App Structure
-	lib/: Contains the Flutter app code.
-	lib/bloc/: Contains BLoC logic for managing post states and events.
-	lib/data/models/: Contains data models for the posts.
-	lib/data/repositories/: Contains the PostRepository responsible for fetching posts.
-	lib/ui/pages/: Contains screens.
-	lib/ui/widgets/: Contains the UI components.
-	main.dart: The entry point of the app, sets up the app’s theme, BLoC, and initial screen.
