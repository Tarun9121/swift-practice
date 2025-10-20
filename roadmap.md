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