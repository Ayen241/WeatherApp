
# 🌤️ WeatherApp

A beautiful, lightweight Flutter weather application that displays real-time weather information with stunning animated visuals. Features BLoC state management, location-based weather detection, and smooth Lottie animations.

![Flutter](https://img.shields.io/badge/Flutter-3.5.4-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.5.4-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)

## ✨ Features

- 🌡️ **Real-time Weather Data** - Live weather information from OpenWeatherMap API
- 📍 **Location Services** - Automatic location detection using device GPS
- 🎨 **Animated Weather Icons** - Smooth Lottie animations for different weather conditions
- 🏗️ **BLoC Architecture** - Clean state management with flutter_bloc
- 🎯 **Cross-Platform** - Supports Android, iOS, Windows, Web, Linux, and macOS
- 🌈 **Beautiful UI** - Modern Material Design with glassmorphism effects

## 🚀 Quick Start

### Prerequisites

- Flutter SDK (^3.5.4) - [Install Flutter](https://docs.flutter.dev/get-started/install)
- Dart SDK (^3.5.4)
- OpenWeatherMap API Key - [Get Free API Key](https://openweathermap.org/api)
- Android Studio / Xcode (for mobile development)
- Visual Studio 2022 (for Windows desktop)

### Installation

1. **Clone the repository**
   ```powershell
   git clone https://github.com/Ayen241/WeatherApp.git
   cd WeatherApp
   ```

2. **Install dependencies**
   ```powershell
   flutter pub get
   ```

3. **Set up your API key**
   - Create `lib/data/my_data.dart` file
   - Add your OpenWeatherMap API key:
     ```dart
     String API_KEY = "your_api_key_here";
     ```
   - This file is already in `.gitignore` to protect your API key

4. **Run the app**
   ```powershell
   # Windows desktop
   flutter run -d windows
   
   # Android
   flutter run -d android
   
   # Web
   flutter run -d chrome
   
   # iOS (macOS only)
   flutter run -d ios
   ```


## 📁 Project Structure

```
weather_app/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── screens/
│   │   └── home_screen.dart      # Main weather display screen
│   ├── bloc/
│   │   ├── weather_bloc_bloc.dart    # BLoC implementation
│   │   ├── weather_bloc_event.dart   # Weather events
│   │   └── weather_bloc_state.dart   # Weather states
│   ├── data/
│   │   └── my_data.dart          # API key (gitignored)
│   └── config/                   # Configuration files
├── assets/
│   ├── Sunny.json               # Clear sky animation
│   ├── Sun&Cloud.json           # Cloudy animation
│   ├── Heavy Rain.json          # Rain animation
│   ├── Drizzle.json             # Drizzle animation
│   ├── Snow.json                # Snow animation
│   ├── thunder.json             # Thunderstorm animation
│   ├── windy.json               # Windy/atmosphere animation
│   ├── 10.png - 13.png          # UI icons
│   └── ...
├── android/                     # Android platform files
├── ios/                         # iOS platform files
├── windows/                     # Windows platform files
├── web/                         # Web platform files
├── linux/                       # Linux platform files
├── macos/                       # macOS platform files
└── test/                        # Unit and widget tests
```

## 🛠️ Tech Stack

### Core Framework
- **Flutter** - UI framework
- **Dart** (^3.5.4) - Programming language

### State Management
- **flutter_bloc** (^8.1.6) - BLoC pattern implementation
- **bloc** (^8.1.4) - Core BLoC library
- **equatable** (^2.0.7) - Value equality

### Weather & Location
- **weather** (^3.1.1) - OpenWeatherMap API integration
- **geolocator** (^13.0.2) - Location services

### UI & Animations
- **lottie** (^3.1.3) - JSON-based animations
- **Material Design** - UI components
- **Cupertino Icons** (^1.0.8) - iOS-style icons

### Utilities
- **intl** (^0.20.1) - Internationalization and date formatting

## 🎨 Weather Conditions Supported

The app displays different animations based on weather codes:

| Code Range | Condition | Animation |
|------------|-----------|-----------|
| 200-300 | Thunderstorm | ⛈️ `thunder.json` |
| 300-321 | Drizzle | 🌦️ `Drizzle.json` |
| 500-531 | Rain | 🌧️ `Heavy Rain.json` |
| 600-622 | Snow | ❄️ `Snow.json` |
| 700-781 | Atmosphere (fog, dust, etc.) | 💨 `windy.json` |
| 800 | Clear sky | ☀️ `Sunny.json` |
| 801-804 | Clouds | ⛅ `Sun&Cloud.json` |


## 🧪 Testing

Run unit and widget tests:

```powershell
flutter test
```

Run tests with coverage:

```powershell
flutter test --coverage
```

## 📊 Code Quality

Run static analysis:

```powershell
flutter analyze
```

Format code:

```powershell
flutter format lib/
```

## 🔒 Security & API Keys

⚠️ **Important**: Never commit your API keys to version control!

This project uses `.gitignore` to protect your API key in `lib/data/my_data.dart`. 

**Setting up your API key:**

1. Create `lib/data/my_data.dart`:
   ```dart
   String API_KEY = "your_openweathermap_api_key";
   ```

2. This file is automatically ignored by Git

3. Get your free API key from [OpenWeatherMap](https://openweathermap.org/api)

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```powershell
   git checkout -b feature/AmazingFeature
   ```
3. **Commit your changes**
   ```powershell
   git commit -m "Add some AmazingFeature"
   ```
4. **Push to the branch**
   ```powershell
   git push origin feature/AmazingFeature
   ```
5. **Open a Pull Request**

### Contribution Guidelines
- Follow the existing code style
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting PR

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Marimo (Ayen241)**
- GitHub: [@Ayen241](https://github.com/Ayen241)

## 🙏 Acknowledgments

- [OpenWeatherMap](https://openweathermap.org/) - Weather data API
- [LottieFiles](https://lottiefiles.com/) - Animation assets
- Flutter community for amazing packages

## 📧 Support

If you encounter any issues or have questions:
- Open an [issue](https://github.com/Ayen241/WeatherApp/issues)
- Contact the maintainer through GitHub

---

Made with ❤️ using Flutter
