# State Management Examples

A **Flutter project** demonstrating various state management techniques through counter pages, highlighting their **pros and cons**, and appropriate **use cases**.

---

## 🚀 Getting Started

This project serves as a starting point for exploring different state management approaches in Flutter.

---

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- An IDE such as:
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [Android Studio](https://developer.android.com/studio)

---

## 📥 Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/pedrokondx/flutter_state_management_examples.git
    ```
2. **Navigate to the project directory**:
    ```bash
    cd flutter_state_management_examples
    ```
3. **Install dependencies**:
    ```bash
    flutter pub get
    ```

---

## ▶️ Running the App

To run the app on an emulator or physical device, execute the following command:
```bash
flutter run
```

---

## 📂 Project Structure

```
lib/
├── main.dart                   // Entry point of the application, only with main function
├── app.dart                    // MyApp widget, configuring routes and providers
├── home_page.dart              // Home Page with navigation to other pages
├── set_state/                  // Implementation for setState state management
│   ├── counter_page.dart       // Counter page using setState
├── provider/                   // Implementation for Provider state management
│   ├── counter_page.dart       // Counter page using Provider
│   ├── counter_provider.dart   // State provider for the counter
├── riverpod/                   // Implementation for Riverpod state management
│   ├── counter_page.dart       // Counter page using Riverpod
│   ├── counter_notifier.dart   // State provider for the counter
├── bloc/                       // Implementation for Bloc state management
│   ├── counter_page.dart       // Counter page using Bloc
│   ├── counter_bloc.dart       // Bloc implementation for the counter
│   ├── counter_events.dart     // Events for Bloc
│   ├── counter_state.dart      // States for Bloc
├── getx/                       // Implementation for GetX state management
│   ├── counter_page.dart       // Counter page using GetX
│   ├── counter_controller.dart // Controller for managing counter state
├── mobx/                       // Implementation for MobX state management
│   ├── counter_page.dart       // Counter page using MobX
│   ├── counter_store.dart      // MobX store for managing counter state
├── value_notifier/             // Implementation for ValueNotifier state management
│   ├── counter_page.dart       // Counter page using ValueNotifier
│   ├── counter_controller.dart // Controller for state logic
│   ├── counter_state.dart      // ValueNotifier state with state pattern and copyWith
```

---

## ⚙️ State Management Techniques

### 1. **`setState`**

**Pros**:
- Simple and intuitive for small projects.
- No additional dependencies required.
- Easy to understand for beginners.

**Cons**:
- Not scalable for complex applications.
- Difficult to test and manage with large state.

**Use Cases**:
- Small, simple widgets or applications with limited state management requirements.

---

### 2. **`Provider`**

**Pros**:
- Lightweight and well-supported by Flutter.
- Easy integration with InheritedWidgets.
- Declarative and scalable.

**Cons**:
- Requires more boilerplate than some other methods.
- State management logic can become tangled with UI.

**Use Cases**:
- Medium-sized applications with moderate complexity.
- When transitioning to a more reactive approach from `setState`.

---

### 3. **`Riverpod`**

**Pros**:
- Simplifies dependency injection.
- Supports both synchronous and asynchronous state.
- Fully independent of the widget tree.

**Cons**:
- Learning curve for beginners.
- Can be overkill for simple projects.

**Use Cases**:
- Applications requiring high modularity and dynamic dependencies.
- Scalable apps with complex business logic.

---

### 4. **`Bloc + Equatable`**

**Pros**:
- Predictable state transitions using events and states.
- Efficient rebuilds with `Equatable` for value comparison.
- Well-documented and community-supported.

**Cons**:
- Steep learning curve.
- Verbose boilerplate for simple use cases.

**Use Cases**:
- Large applications with complex state interactions.
- Apps that need clear separation between state and UI.

**Why Use Equatable?**
`flutter_bloc` uses `Equatable` to ensure that state and event classes are compared by value rather than reference. This ensures efficiency by avoiding unnecessary widget rebuilds when state hasn't actually changed.

---

### 5. **`GetX`**

**Pros**:
- Minimal boilerplate.
- Combines state management, routing, and dependency injection.
- High-performance and reactive.

**Cons**:
- Over-reliance on global state can lead to issues.
- Not officially endorsed by the Flutter team.

**Use Cases**:
- Quick prototypes or small apps.
- When you need routing, dependency injection, and state management in one package.

---

### 6. **`MobX`**

**Pros**:
- Reactive and declarative.
- Minimal boilerplate with Dart code generation.
- Easy integration with Flutter widgets.

**Cons**:
- Requires build_runner for code generation.
- Can be hard to debug if misused.

**Use Cases**:
- Apps where reactive programming is preferred.
- Applications requiring clean and organized state handling.

---

### 7. **`ValueNotifier` with State Pattern and `copyWith`**

**Pros**:
- Native to Flutter, no additional dependencies.
- Efficient state updates.
- Immutability with `copyWith` supports scalability.

**Cons**:
- Requires manual management of listeners.
- Not as feature-rich as external packages.

**Use Cases**:
- Apps favoring simplicity and native solutions.
- Projects requiring predictable and modular state updates.

---

### Why Use `copyWith` in ValueNotifier?

- **Immutability**: Creating a new state object ensures no side effects, aiding in predictable behavior.
- **Scalability**: As the app grows and new properties are added, updates remain concise and maintainable.
- **Best Practice**: Aligns with Flutter's recommendation for immutability.

**Code Example**:
```dart
class ValueNotifierCounterState {
  final int counter;
  
  ValueNotifierCounterState({required this.counter});
  
  ValueNotifierCounterState copyWith({int? counter}) {
    return ValueNotifierCounterState(
      counter: counter ?? this.counter,
    );
  }
}
```

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.