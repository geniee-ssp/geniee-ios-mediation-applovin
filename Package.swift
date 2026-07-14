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
            from: "8.4.3"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-applovin/releases/download/13.6.201/GenieeMediationAppLovin.13.6.2.1.zip",
            checksum: "ba68f74872a6ec782bcbffb188f55ba476fb9eca261b0fc82eebbfe4610b770e"
        )
    ]
)
