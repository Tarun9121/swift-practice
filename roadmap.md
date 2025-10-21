---

# 🗓️ **Swift + React Native Roadmap (7 Days)**

---

## **Day 1 – Swift Basics (Syntax & Language Core)**

🎯 *Goal: Understand Swift’s foundation and syntax.*

**Topics:**

* Variables, constants, and data types (`var`, `let`, `Int`, `String`, `Bool`, `Array`, `Dictionary`)
* Conditionals (`if`, `guard`, `switch`)
* Functions and return types
* Optionals (`?`, `!`) — a key Swift concept
* Classes and Structs basics

**Practice:**

* Write a small Swift playground file:

  ```swift
  var name = "Tarun"
  func greet(person: String) -> String {
      return "Hello, \(person)!"
  }
  print(greet(person: name))
  ```

**Resources:**

* [Apple Swift Playgrounds](https://developer.apple.com/swift/resources/)
* [Swift.org - The Swift Programming Language Guide](https://docs.swift.org/swift-book/)

---

## **Day 2 – Deep Dive into Swift Fundamentals**

🎯 *Goal: Write clean, reusable Swift code.*

**Topics:**

* Classes vs Structs
* Inheritance and Protocols
* Closures (similar to JS arrow functions)
* Error handling (`try`, `catch`)
* Enumerations (Enums)

**Practice:**

* Build a class like `DeviceManager` with a `getBatteryInfo()` function.

---

## **Day 3 – iOS Basics: UIKit + App Lifecycle**

🎯 *Goal: Understand how iOS apps are structured.*

**Topics:**

* What is a `UIViewController`?
* What is a `UIView`?
* View lifecycle (`viewDidLoad`, `viewWillAppear`, etc.)
* iOS App structure (AppDelegate, SceneDelegate)
* Understand what happens when React Native embeds your JS into an iOS app

**Practice:**

* Create a small Swift project in Xcode and print logs inside `viewDidLoad()`.

---

## **Day 4 – Creating a Native iOS Module for React Native**

🎯 *Goal: Learn to connect Swift with React Native.*

**Topics:**

* RN bridging concepts
* `RCTBridgeModule` protocol
* Exposing Swift functions to JS
* Returning promises and sending events to JS

**Practice:**

* Create a `DeviceInfoModule.swift` file that exposes a native function:

  ```swift
  @objc(DeviceInfoModule)
  class DeviceInfoModule: NSObject {
    @objc(getDeviceName:withRejecter:)
    func getDeviceName(resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
        resolve(UIDevice.current.name)
    }
  }
  ```

* Then call it from React Native:

  ```js
  import { NativeModules } from 'react-native';
  console.log(await NativeModules.DeviceInfoModule.getDeviceName());
  ```

---

## **Day 5 – Advanced Native Communication**

🎯 *Goal: Handle callbacks, events, and data transfer.*

**Topics:**

* Sending events to JS with `RCTEventEmitter`
* Handling async operations (Promises)
* Using native iOS APIs (Battery, Location, Camera, etc.)

**Practice:**

* Create a native module that listens for battery level changes and sends updates to React Native.

---

## **Day 6 – Debugging & Integrating SDKs**

🎯 *Goal: Learn to handle iOS-specific issues like you’ve seen before.*

**Topics:**

* Understanding Xcode logs
* Common issues (e.g. “Snapshotting a view…”)
* Integrating an iOS SDK (e.g., Firebase, camera, analytics) manually
* Linking frameworks and setting build targets

**Practice:**

* Add a small open-source iOS library (via Swift Package Manager) to your project and test calling it from JS.

---

## **Day 7 – Final Project + Optimization**

🎯 *Goal: Combine everything you learned.*

**Project idea:**
✅ Create a **React Native + Swift native module** that:

* Gets the device’s model name, battery level, and system version from Swift
* Sends it to React Native and displays it on a screen

You’ll be able to:

* Use Xcode confidently
* Write basic Swift
* Expose Swift to React Native
* Debug iOS behavior with native understanding

---

## 🧭 Optional (for Deeper Mastery)

If you enjoy Swift and want to go deeper:

* Learn **SwiftUI** (modern iOS UI framework)
* Explore **Combine** or **async/await** for reactive data
* Try **Swift on the server** (e.g., Vapor)

---

Perfect! SwiftUI is modern, declarative, and very different from UIKit, so learning it in a structured way will help you a lot. I’ll break it down step by step, starting from fundamentals to advanced topics. I’ll also suggest a learning path that builds up progressively.

---

## **1. Basics of SwiftUI**

Before diving deep, you need to understand the core structure of SwiftUI.

* **SwiftUI Project Structure**

  * `@main` and `App` protocol
  * `Scene` and `WindowGroup`
  * `ContentView`

* **Views and Modifiers**

  * `Text`, `Image`, `Button`
  * View modifiers like `.font()`, `.foregroundColor()`, `.padding()`, `.background()`, `.cornerRadius()`
  * Chaining modifiers

* **Stacks**

  * `VStack`, `HStack`, `ZStack`
  * Alignment and spacing

* **Containers**

  * `ScrollView`
  * `List` (simple usage)
  * `ForEach`

---

## **2. State Management**

Understanding state is crucial in SwiftUI because views are reactive.

* `@State`
* `@Binding`
* `@StateObject` & `@ObservedObject`
* `@EnvironmentObject`
* `@Environment`
* How to update the UI when state changes

---

## **3. Layouts and Geometry**

* `Spacer` and `Divider`
* `GeometryReader`
* `Alignment` and `Padding`
* `.frame()` and `.offset()`
* Responsive layouts

---

## **4. Interactivity**

* Buttons and actions
* Gesture recognizers

  * Tap, Long Press, Drag, Magnification, Rotation
* Animations

  * `.animation()`
  * `.withAnimation()`
  * Implicit vs explicit animations
* Transitions

  * `.transition()`
  * `.opacity`, `.slide`, `.scale`

---

## **5. Data Handling**

* Lists and dynamic content

  * `List` + `ForEach`
  * Identifiable protocol
* Forms and input fields

  * `TextField`
  * `SecureField`
  * `Toggle`, `Picker`, `Stepper`
* Binding form data to state

---

## **6. Navigation**

* `NavigationStack` and `NavigationLink` (new in iOS 16)
* Passing data between views
* Programmatic navigation
* Sheet presentation

  * `.sheet()`
  * `.fullScreenCover()`
* Alerts and action sheets

  * `.alert()`
  * `.confirmationDialog()`

---

## **7. Advanced SwiftUI**

* **Custom Views**

  * Reusable views
  * View composition
* **Modifiers**

  * Custom modifiers
  * View extensions
* **Drawing & Shapes**

  * `Rectangle`, `Circle`, `Capsule`, `Path`, `Shape`
* **Gradients and Colors**

  * LinearGradient, RadialGradient, AngularGradient
* **Animations & Motion**

  * MatchedGeometryEffect
  * Animatable properties
* **Lazy Containers**

  * `LazyVStack`, `LazyHStack`, `LazyVGrid`, `LazyHGrid`

---

## **8. Persistence & Networking**

* Using `@AppStorage` for simple data
* Using `UserDefaults` in SwiftUI
* Fetching data from APIs

  * `URLSession` + Combine
  * Using `async/await`
* Image loading (remote and local)

---

## **9. Combine Basics (Optional but helpful)**

* Publishers & Subscribers
* `ObservableObject` + `@Published`
* `@StateObject` vs `@ObservedObject` in reactive updates

---

## **10. Real-World Projects (Practice)**

After the basics, apply your knowledge:

1. To-Do App (Lists, State, Form)
2. Weather App (Networking + JSON Parsing)
3. Movie App (API + Images + Navigation)
4. Shopping Cart (State Management + Custom Views)
5. Animation Demo (Custom Animations + Transitions)

---

✅ **Tips to learn SwiftUI effectively:**

* Start with small “mini-projects” instead of reading everything.
* Practice **modifier chaining**; it’s fundamental in SwiftUI.
* Use **Preview** in Xcode to quickly see changes.
* Learn to combine SwiftUI with **Combine** and async/await for real apps.
* Focus on **declarative thinking**: Instead of thinking “how to change the UI”, think “what should the UI look like for this state”.

---