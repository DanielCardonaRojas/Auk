// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Auk",
    platforms: [
        .iOS(.v13)
        
    ],
    products: [
        .library(name: "Auk", targets: ["Auk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/evgenyneu/moa", from: "12.0.0")
    ],
    targets: [
        .target(name: "Auk", dependencies: ["moa"], path: "Auk"),
        .testTarget(
            name: "AukTests",
            dependencies: ["Auk"],
            path: "AukTests"
        )
    ]
)
