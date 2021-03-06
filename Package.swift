// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "vapor-app",
  products: [
    .library(name: "vapor-app", targets: ["App"]),
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    .package(url: "https://github.com/vapor/websocket.git", from: "1.0.0"),
    .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0")
  ],
  targets: [
    .target(name: "App", dependencies: ["FluentPostgreSQL", "Vapor", "WebSocket"]),
    .target(name: "Run", dependencies: ["App"]),
    .testTarget(name: "AppTests", dependencies: ["App"])
  ]
)

