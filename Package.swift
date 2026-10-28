// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationAppLovin",
            targets: ["GenieeMediationAppLovinTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.6.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationAppLovinTarget",
            dependencies: [
                "GenieeMediationAppLovin",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/GenieeMediationAppLovinTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationAppLovin",
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-applovin/releases/download/13.6.202/GenieeMediationAppLovin.13.6.2.2.zip",
            checksum: "a3118d02f17785443da2a4fd920057a2034cb0f584327298e00e80086939c55f"
        )
    ]
)
