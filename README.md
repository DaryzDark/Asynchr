# Asynchr

## Project Description

Asynchr is a simulator for asynchronous programming concepts, featuring a custom language interpreter. The tool allows users to visualize and experiment with asynchronous execution models through an interactive interface.

The simulator includes:
- A custom language parser and interpreter
- Visual representation of execution flow
- Cross-platform support (desktop and mobile)
- Interactive code execution environment

## Features

- Custom grammar and language support
- Real-time visualization of asynchronous operations
- Step-by-step execution capabilities
- Cross-platform compatibility (Android, iOS, Web, macOS, Windows, Linux)
- Interactive UI for code editing and execution

## Setup Instructions

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable version)
- Dart SDK (included with Flutter)
- An IDE with Flutter support (VS Code, Android Studio, or IntelliJ IDEA)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Asynchr.git
   cd Asynchr
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate parser from grammar (if needed):
   ```bash
   cd grammar
   # Run ANTLR tools on AsynchrGrammar.g4
   # This step depends on your specific ANTLR setup
   ```

## Running the Application

### Development Mode

Run the application in debug mode:

```bash
flutter run
```

This will launch the application on the connected device or simulator. You can specify a target platform:

```bash
flutter run -d chrome  # For web
flutter run -d windows # For Windows
flutter run -d macos   # For macOS
flutter run -d linux   # For Linux
flutter run -d android # For Android device/emulator
flutter run -d ios     # For iOS simulator/device
```

### Building Release Versions

#### Android
```bash
flutter build apk
# The APK will be available at build/app/outputs/flutter-apk/app-release.apk
```

#### iOS
```bash
flutter build ios
# Further steps in Xcode needed for distribution
```

#### Web
```bash
flutter build web
# Output will be in build/web directory
```

#### Desktop (Windows/macOS/Linux)
```bash
flutter build windows
flutter build macos
flutter build linux
# Output will be in the respective build directories
```

## Usage

1. Launch the application
2. Write or load a program using the custom Asynchr language
3. Use the simulator controls to execute the code step by step
4. Observe the visualization of the asynchronous operations
5. Analyze the execution flow and results

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
