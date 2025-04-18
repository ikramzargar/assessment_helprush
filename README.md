<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
</head>
<body>
  <h1>📱 HelpRush Assessment App</h1>
  <p>
    A Flutter assessment project demonstrating clean architecture, <strong>SOLID principles</strong>, and state management using the <strong>BLoC pattern</strong>. This app fetches and displays posts from a public API, featuring skeleton loading, error handling, and dynamic theme switching (light/dark).
  </p>

  <hr>

  <h2>🚀 Demo & Installation</h2>
  <ul>
    <li>📲 <a href="https://drive.google.com/file/d/1JMrqmSfREbOcoNay_lL95MlPB6r-TgFP/view?usp=sharing" target="_blank">Download APK</a></li>
    <li>🎥 <a href="https://drive.google.com/file/d/1pgagegm1PfCfrYym26Hzck7zkxJwcRDt/view?usp=sharing" target="_blank">Watch Demo Video</a></li>
  </ul>

  <hr>

  <h2>✨ Features</h2>

  <h3>📰 Fetch Posts</h3>
  <ul>
    <li>Retrieves posts from <a href="https://jsonplaceholder.typicode.com" target="_blank">JSONPlaceholder</a></li>
    <li>Displays post title (bold) and body (subtext)</li>
  </ul>

  <h3>⚙️ State Management</h3>
  <ul>
    <li>Uses <strong>BLoC</strong> for state management:</li>
    <ul>
      <li><strong>Loading:</strong> Displays shimmer skeleton loader</li>
      <li><strong>Loaded:</strong> Shows post list</li>
      <li><strong>Error:</strong> Graceful error handling (e.g., no internet)</li>
    </ul>
  </ul>

  <h3>🎨 UI Enhancements</h3>
  <ul>
    <li><strong>Skeleton Loader:</strong> Shimmer animation while loading</li>
    <li><strong>SnackBar:</strong> Shows post info on tap</li>
    <li><strong>Pull-to-Refresh:</strong> Smooth refresh with RefreshIndicator</li>
    <li><strong>Dark/Light Mode:</strong> System-based theme switching</li>
  </ul>

  <hr>

  <h2>📦 Packages Used</h2>
  <ul>
    <li><strong>flutter_bloc</strong> – State management</li>
    <li><strong>shimmer</strong> – Skeleton loading animation</li>
    <li><strong>http</strong> – API calls</li>
    <li><strong>equatable</strong> – For equality in BLoC states and events</li>
  </ul>

  <hr>

  <h2>🛠️ Getting Started</h2>
  <ol>
    <li><strong>Clone the repository</strong>
      <pre><code>git clone &lt;repo-url&gt;
cd flutter-post-app</code></pre>
    </li>
    <li><strong>Install dependencies</strong>
      <pre><code>flutter pub get</code></pre>
    </li>
    <li><strong>Run the app</strong>
      <pre><code>flutter run</code></pre>
    </li>
  </ol>

  <hr>

  <h2>🗂️ App Structure</h2>
  <pre><code>lib/
├── bloc/                 -> BLoC logic
├── data/
│   ├── models/           -> Post data models
│   └── repositories/     -> Repository for fetching data
├── ui/
│   ├── pages/            -> Screens
│   └── widgets/          -> Reusable widgets
└── main.dart             -> App entry, theme, and BLoC setup
</code></pre>

  <hr>

  <h2>✅ Summary</h2>
  <p>
    This app showcases a clean and modular Flutter architecture, using BLoC for state management and best practices for scalable development. It’s designed to be maintainable, testable, and user-friendly.
  </p>
</body>
</html>
