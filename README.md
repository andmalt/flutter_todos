# flutter_todos

`flutter_todos` is a simple and intuitive to-do list application built using Flutter. This project demonstrates the use of Flutter to create a cross-platform application that runs on Android, iOS and desktop platforms. The project utilizes the BLoC pattern for state management, Drift for persistence built on top of SQLite and the Freezed library for immutable data classes.

## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of [Flutter](https://flutter.dev/docs/get-started/install)
- You have a running emulator or a physical device connected
- For Android development:
  - Install [Android Studio](https://developer.android.com/studio)
  - Set up the Android emulator or connect an Android device
- For iOS development:
  - Install [Xcode](https://developer.apple.com/xcode/)
  - Set up the iOS simulator or connect an iOS device
- For Windows development:
  - Install the [Visual Studio](https://visualstudio.microsoft.com/) with the "Desktop development with C++" workload
- For macOS development:
  - Install the latest version of Xcode
- For Linux development:
  - Ensure you have the necessary dependencies installed (e.g., GTK, Glib)


### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/andmalt/flutter_todos.git
    ```
2. Navigate to the project directory:
    ```sh
    cd flutter_todos
    ```
3. Install the dependencies:
    ```sh
    flutter pub get
    ```

### Running the Application

To run the application on your desired platform, use the following commands:

- For Android:
    ```sh
    flutter run
    ```
- For iOS:
    ```sh
    flutter run
    ```
- For Windows:
    ```sh
    flutter run -d windows
    ```
- For macOS:
    ```sh
    flutter run -d macos
    ```
- For Linux:
    ```sh
    flutter run -d linux
    ```

### Folder Descriptions

- `lib/`: Main directory containing the source code of the application.
  - **`main.dart`**: The main entry point of the application where the app is initialized.
  - `core/`: Manages the configuration and initialization of application services. 
  - `blocs/`: It contains the BLoC (Business Logic Component) classes responsible for managing state and presentation logic, facilitating the separation of business logic and user interface.
  - `data/`: Manages data access and management. Includes:
    - `models/`: Contains the data models used in the application.
    - `repositories/`: Concrete implementations of repositories that provide methods for accessing data from different sources.
    - `datasources/`: External or local data sources, such as REST APIs or SQLite databases.
  - `domain/`: Contains the business logic of the application. Includes:
    - `entities/`: Classes representing the fundamental entities of the domain.
    - `repositories/`: Interfaces that define contracts for data access, implemented in the `data` layer.
    - `usecases/`: Use cases that encapsulate specific business operations or application functionality.
  - `presentation/`: Manages user interface and data presentation. Includes:
    - `pages/`: Pages of the application that representing different views.
    - `widgets/`: Reusable UI components within pages.

## Used libraries and technologies

- [Flutter](https://flutter.dev/)
- [Drift](https://pub.dev/packages/drift)
- [BLoC](https://bloclibrary.dev/#/)
- [Freezed](https://pub.dev/packages/freezed)


