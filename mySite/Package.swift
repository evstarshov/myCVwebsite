// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MySite",
    products: [
        .executable(
            name: "MySite",
            targets: ["MySite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0"),
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "MySite",
            dependencies: [
                "Publish",
                "SplashPublishPlugin"
            ]
        )
    ]
)
