// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "TCACoordinators",
  platforms: [
    .iOS(.v13), .watchOS(.v7), .macOS(.v11), .tvOS(.v13),
  ],
  products: [
    .library(
      name: "TCACoordinators",
      targets: ["TCACoordinators"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/johnpatrickmorgan/FlowStacks", from: "0.8.4"),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.12.0"),
  ],
  targets: [
    .target(
      name: "TCACoordinators",
      dependencies: [
        .product(name: "FlowStacks", package: "FlowStacks"),
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]
    ),
    .testTarget(
      name: "TCACoordinatorsTests",
      dependencies: ["TCACoordinators"]
    ),
  ]
)
