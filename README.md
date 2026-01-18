# NextUp

A Flutter application built with clean architecture principles, featuring location-based reminders and geofencing capabilities.

## 📋 Table of Contents

- [Overview](#-overview)
- [Overview](#-app-features)
- [Tech Stack](#-tech-stack)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Project Structure](#-project-structure)
- [Development Guide](#-development-guide)
- [Build & Deployment](#-build--deployment)
- [Contributing](#-contributing)

## 🎯 Overview

NextUp is a location-aware reminder application that leverages geofencing to notify users when they enter specific areas. Built with Domain-Driven Design principles and clean architecture, it provides a scalable and maintainable codebase.

## 🍰 App Features

1. **Time-based Reminders** ✅

   Users can create multiple reminders throughout the day (e.g., 09:00,
   10:00, 12:00).

   Users can view, edit, and delete reminders.

   > User can view today reminder summary, filter reminder by date also filter by type (time or location based reminder).

2. Local Storage (Persistent) ✅

   Store reminders locally using `drift`

3. Local Notifications ✅

   Trigger local notifications at the scheduled reminder times.

4. UI/UX Focus ✅
   - Build a clean, user-friendly UI for adding, managing, and viewing
     reminders.

   - Prioritize clarity, usability, and good visual hierarchy.
     Bonus (Optional)
   - Best User Interface and User Experience

5. Location-based reminders (e.g., remind user when arriving at a
   specific location). ✅
   > Currently this feature only works when the user opening the app / can't work on background (app closed)

## 🚀 Tech Stack

### Architecture & Design Patterns

- **Domain-Driven Design (DDD)**: Organizes code into logical layers for maintainability and scalability
- **BLoC / Cubit**: State management with clear separation of concerns
- **Dependency Injection**: Modular and testable code structure

### Core Dependencies

- **Freezed**: Immutable data classes and sealed classes with reduced boilerplate
- **AutoRoute**: Automatic route generation and navigation management
- **Drift**: Type-safe local database (SQLite wrapper)
- **SharedPreferences**: Simple key-value storage

### Features

- **Multiple Flavors**: Environment support (`dev`, `staging`, `prod`)
- **Error Handling**: Centralized error management with `BaseError`, `Failure`, and `ResponseCode`
- **Local Notifications**: Push notifications using `flutter_local_notifications`
- **Geolocation & Geofencing**: Location detection and area-based reminders
- **FlutterGen**: Code generation for assets, eliminating string-based APIs

## 📦 Prerequisites

Ensure you have the following installed:

| Tool     | Version |
| -------- | ------- |
| Flutter  | 3.38.5  |
| Dart     | 3.10.4  |
| Java JDK | 17      |

## 🎬 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/ilham25/gc_reminder.git
cd gc_reminder
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure Keystore (Android)

Create a `key.properties` file in the `android` directory:

```properties
storePassword=password-sent-in-email
keyPassword=password-sent-in-email
keyAlias=alias-sent-in-email
storeFile=gc-reminder-keystore.jks
```

Place your keystore file (`gc-reminder-keystore.jks`) in the `android/app` directory.

> **Note**: Replace the placeholder values with your actual keystore credentials (check your email for details).

### 4. Generate Code

Run the build runner to generate necessary code:

```bash
dart run build_runner build --delete-conflicting-outputs
```

For continuous generation during development:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

### 5. Run the Application

Choose your target flavor:

```bash
# Development
flutter run --flavor dev

# Staging
flutter run --flavor staging

# Production
flutter run --flavor prod
```

## 📁 Project Structure

```
lib
│── bloc
│── config
│── core
│   │── components
│   │── constant
│   │── models
│   │── networks
│── domain
│   │── entities
│   │── models
│   │── repositories
│── gen
│── infrastructure
│   ├── database
│   │── datasource
│   │── repositories
│── injection
│── presentation
│── routing
│── theme
│── utils
│── app.dart
│── bootstrap.dart
│── main.dart
```

## 👨‍💻 Development Guide

### Accessing Flavor Configuration

Use the `FlavorUtils` class to access the current flavor:

```dart
final currentFlavor = flavor.current;
```

### Creating a New Page

1. **Create the screen** in `lib/presentation/`

```dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
```

2. **Generate routing code**

```bash
dart run build_runner build --delete-conflicting-outputs
```

3. **Register the route** in `lib/routing/route.dart`

```dart
@override
List<AutoRoute> get routes => [
  AutoRoute(page: SplashRoute.page, initial: true),
  AutoRoute(page: HomeRoute.page),
  AutoRoute(page: NewRoute.page), // Add your new route
];
```

### Fetching API Data

Follow these steps to implement API data fetching:

1. **Create Entity** in `lib/domain/entities/`

   ```dart
   import 'package:freezed_annotation/freezed_annotation.dart';

   part 'user_entity.freezed.dart';

   part 'user_entity.g.dart';

   @freezed
   class UserEntity with _$UserEntity {
     const factory UserEntity({
       @JsonKey(name: 'id') int? id,
       @JsonKey(name: 'email') String? email,
       @JsonKey(name: 'first_name') String? firstName,
       @JsonKey(name: 'last_name') String? lastName,
       @JsonKey(name: 'avatar') String? avatar,
     }) = _UserEntity;

     factory UserEntity.fromJson(Map<String, dynamic> json) =>
        _$UserEntityFromJson(json);

   }
   ```

2. **Create DataSource** in `lib/infrastructure/datasource/`

   ```dart
   abstract class UserRemoteDataSource {
     Future<Either<Failure, UserEntity>> getUser(String id);
   }
   ```

3. **Create Repository Interface** in `lib/domain/repositories/`

   ```dart
   abstract class UserRepository {
     Future<Either<Failure, UserEntity>> getUser(String id);
   }
   ```

4. **Implement Repository** in `lib/infrastructure/repositories/`

5. **Register Dependencies** in `lib/injector.dart`

6. **Create BLoC/Cubit** in `lib/bloc`

7. **Build UI** in `lib/presentation/pages/`

> **Tip**: While waiting for backend schema, create models in `lib/domain/models/` and add adapter methods in entities for easy conversion.

### Working with Local Data (Drift)

For local database operations:

1. **Define Table** in `lib/infrastructure/database/tables/`

   ```dart
   class Reminders extends Table {
     IntColumn get id => integer().autoIncrement()();
     TextColumn get title => text()();
     DateTimeColumn get createdAt => dateTime()();
   }
   ```

2. **Register Table** in `lib/infrastructure/database/database.dart`

   ```dart
   const List<Type> tables = [ReminderTable];

   @DriftDatabase(tables: tables)
   class AppDatabase extends _$AppDatabase {
     // ...
   }
   ```

3. **Create Local DataSource** in `lib/infrastructure/datasource/`

4. **Follow steps 4-8** from "Fetching API Data" section

## 🏗️ Build & Deployment

### Building for Release

**Android:**

```bash
flutter build apk --release --flavor prod
flutter build appbundle --release --flavor prod
```

**iOS:**

```bash
flutter build ios --release --flavor prod
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
