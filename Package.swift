// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "SPMImportKit",
    platforms: [
        .iOS(.v13), 
        .tvOS(.v13), 
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SPMImportKit",
            targets: ["SPMImportKit"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/kean/Align",
            from: "3.0.0"
        )
    ],
    targets: [
        .target(
            name: "SPMImportCore"
        ),
        .target(
            name: "SPMImportModule1",
            dependencies: [
                "SPMImportCore",
                "Align"
            ]
        ),
        .target(
            name: "SPMImportModule2",
            dependencies: ["SPMImportCore"]
        ),
        .target(
            name: "SPMImportKit",
            dependencies: [
                "SPMImportCore",
                "SPMImportModule1",
                "SPMImportModule2"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)

